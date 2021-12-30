from rest_framework import serializers
from .models import *


class SurveySerializer(serializers.ModelSerializer):

    class Meta:
        model = Survey
        fields = '__all__'


class QuestionAnswerChoiceSerializer(serializers.ModelSerializer):

    class Meta:
        model = QuestionAnswerChoice
        fields = '__all__'


class QuestionTypeSerializer(serializers.ModelSerializer):

    class Meta:
        model = QuestionType
        fields = '__all__'

class UserAnswerToQuestionSerializer(serializers.ModelSerializer):

    class Meta:
        model = UsersAnswer
        fields = ('text_answer', 'choice_answers', 'question')
        extra_kwargs = {
            "question": { "write_only": True},
        }


class QuestionSerializer(serializers.ModelSerializer):
    question_type = QuestionTypeSerializer(read_only=True)
    answer_choices = QuestionAnswerChoiceSerializer(read_only=True, many=True)
    user_answer = serializers.SerializerMethodField()

    def get_user_answer(self, obj):
        user_id = self.context.get('request').session.get('USER_ID', None)
        
        if not user_id:
            return None
        else:
            try:
                return UserAnswerToQuestionSerializer(UsersAnswer.objects.get(uuid=user_id, question=obj)).data   
            except:
                return None

    class Meta:
        model = Question
        fields = ('id', 'question_text', 'question_type',
                  'answer_choices', 'user_answer')


class SurveyDetailsSerialzier(serializers.ModelSerializer):
    questions = QuestionSerializer(many=True)

    class Meta:
        model = Survey
        fields = ('id', 'name', 'start_date',
                  'end_date', 'description', 'questions')



