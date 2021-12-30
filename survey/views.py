from rest_framework.generics import ListAPIView, RetrieveAPIView
from .serializers import SurveySerializer, SurveyDetailsSerialzier, UserAnswerToQuestionSerializer
from .models import Survey, UsersAnswer, Question, QuestionAnswerChoice
import datetime
from rest_framework.views import APIView
import uuid
from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK, HTTP_400_BAD_REQUEST, HTTP_403_FORBIDDEN


class SurveyListView(ListAPIView):
    serializer_class = SurveySerializer

    def get_queryset(self):
        qs = Survey.objects.filter(end_date__gte=datetime.datetime.now())
        return qs


class SurveyDetailsView(RetrieveAPIView):
    queryset = Survey.objects.all()
    serializer_class = SurveyDetailsSerialzier


class UserAnswerToQuestionView(APIView):

    def post(self, request):
        user_id = request.session.get('USER_ID', None)
        if not user_id:
            user_id = uuid.uuid4()
            request.session['USER_ID'] = user_id
        serializer = UserAnswerToQuestionSerializer(data=request.data)
        if serializer.is_valid():
        	answer = UsersAnswer.objects.create(uuid=user_id, text_answer=serializer.data['text_answer'], question=Question.objects.get(id=serializer.data['question']))
        	for item in serializer.data['choice_answers']:
        		choice = QuestionAnswerChoice.objects.get(id=item)
        		answer.choice_answers.add(choice)
        	return Response(status=HTTP_200_OK)
        else:
            print(serializer.errors)
            return Response({'error': 'Something went wrong'}, status=HTTP_400_BAD_REQUEST)
