from django.contrib import admin
from django.contrib.auth.admin import UserAdmin

from django.contrib import admin
from adminpanel.models import MES,School,Teacher,Classroom,Question,Student


class MESAdmin(admin.ModelAdmin):
    list_display=("id","name","surname","email","password","department","loginTimeStamp","createdTimeStamp","updatedTimeStamp")

class SchoolAdmin(admin.ModelAdmin):
    list_display=("id","name","school_number","location")

class TeacherAdmin(admin.ModelAdmin):
    list_display=("id","name","surname","school_id","number_of_created_classroom","emergency_contact","createdTimeStamp","updatedTimeStamp")

class ClassroomAdmin(admin.ModelAdmin):
    list_display=("id","name","num_of_students","createdById","gameType","createdTimeStamp","updatedTimeStamp")

class QuestionAdmin(admin.ModelAdmin):
    list_display=("id","name","level","correct_answer","number_of_displayed","number_of_correct_answered","number_of_wrong_answered","createdTimeStamp","updatedTimeStamp")

class StudentAdmin(admin.ModelAdmin):
    list_display=("id","name","surname","age","school_id","class_number","classroom_id","number_of_answers","number_of_correct_answers","number_of_wrong_answers","current_level","emergency_contact","emergency_confirmed","createdTimeStamp","updatedTimeStamp")

admin.site.register(MES,MESAdmin)
admin.site.register(School,SchoolAdmin)
admin.site.register(Teacher,TeacherAdmin)
admin.site.register(Classroom,ClassroomAdmin)
admin.site.register(Question,QuestionAdmin)
admin.site.register(Student,StudentAdmin)



