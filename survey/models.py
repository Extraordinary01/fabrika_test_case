from django.db import models
from django.utils.timezone import now
import uuid
from json import JSONEncoder

old_default = JSONEncoder.default


def new_default(self, obj):
    if isinstance(obj, uuid.UUID):
        return str(obj)
    return old_default(self, obj)


JSONEncoder.default = new_default


class Survey(models.Model):
    name = models.CharField(max_length=250, verbose_name="Название опроса")
    start_date = models.DateField(default=now, verbose_name="Дата началы")
    end_date = models.DateField(verbose_name="Дата конца")
    description = models.TextField(verbose_name="Описание")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Опрос'
        verbose_name_plural = 'Опросы'


class QuestionType(models.Model):
    name = models.CharField(
        max_length=150, verbose_name="Название типа вопроса")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Тип вопроса'
        verbose_name_plural = 'Типы вопроса'


class Question(models.Model):
    question_text = models.TextField(verbose_name="Текст вопроса")
    question_type = models.ForeignKey(
        QuestionType, on_delete=models.CASCADE, verbose_name="Тип вопроса", related_name='questions')
    survey = models.ForeignKey(
        Survey, on_delete=models.CASCADE, verbose_name="Опрос", related_name='questions')

    def __str__(self):
        return self.question_text

    class Meta:
        verbose_name = 'Вопрос'
        verbose_name_plural = 'Вопросы'


class QuestionAnswerChoice(models.Model):
    answer = models.TextField(verbose_name="Текст ответа")
    question = models.ForeignKey(
        Question, on_delete=models.CASCADE, verbose_name="Вопрос", related_name='answer_choices')
    is_correct_answer = models.BooleanField(
        default=False, verbose_name="Правильный ответ ?")

    def __str__(self):
        return f'{self.question} - {self.answer}'

    class Meta:
        verbose_name = 'Вариант ответов для вопроса'
        verbose_name_plural = 'Варианты ответов для вопроса'


class UsersAnswer(models.Model):
    uuid = models.UUIDField(verbose_name="ID пользователя")
    text_answer = models.TextField(
        verbose_name="Текстовый ответ", null=True, blank=True)
    choice_answers = models.ManyToManyField(
        QuestionAnswerChoice, blank=True, verbose_name="Выборочный ответ", related_name='choosed_users')
    question = models.ForeignKey(
        Question, on_delete=models.CASCADE, verbose_name="Вопрос", related_name='answered_users')

    def __str__(self):
        return f'Ответ пользователя {self.uuid} на вопрос {self.question}'

    class Meta:
        verbose_name = "Ответ пользователя"
        verbose_name_plural = "Ответы пользователей"
