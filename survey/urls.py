from django.urls import path
from .views import SurveyListView, SurveyDetailsView, UserAnswerToQuestionView

urlpatterns = [
    path('surveys/', SurveyListView.as_view()),
    path('survey/<int:pk>/', SurveyDetailsView.as_view()),
    path('survey/question/answer', UserAnswerToQuestionView.as_view())
]
