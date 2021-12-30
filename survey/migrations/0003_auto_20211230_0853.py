# Generated by Django 2.2.10 on 2021-12-30 08:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('survey', '0002_auto_20211230_0825'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usersanswer',
            name='choice_answers',
            field=models.ManyToManyField(blank=True, related_name='choosed_users', to='survey.QuestionAnswerChoice', verbose_name='Выборочный ответ'),
        ),
        migrations.AlterField(
            model_name='usersanswer',
            name='text_answer',
            field=models.TextField(blank=True, null=True, verbose_name='Текстовый ответ'),
        ),
    ]