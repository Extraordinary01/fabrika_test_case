from django.contrib import admin
from .models import *


class SurveyAdmin(admin.ModelAdmin):
    list_display = ('name', 'start_date', 'end_date')

    def get_readonly_fields(self, request, obj=None):
        if obj:
            return ['start_date']
        else:
            return []


admin.site.register(Survey, SurveyAdmin)
admin.site.register(QuestionType)
admin.site.register(Question)
admin.site.register(QuestionAnswerChoice)
admin.site.register(UsersAnswer)
