from adminpanel.models import School, Classroom, Question, Student, Answer, Admin, Teacher, Task
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin


class AdminAdmin(UserAdmin):
    model = Admin
    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        ('Personal info', {'fields': ('name', 'surname', 'department')}),
        ('Permissions', {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'name', 'surname', 'password1', 'password2', 'department'),
        }),
    )
    list_display = (
        'id', 'email', 'name', 'surname', 'department', 'created_date', 'last_login', 'updated_date', 'is_staff')
    search_fields = ('email', 'name', 'surname')
    ordering = ('id',)


class TeacherAdmin(UserAdmin):
    model = Teacher
    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        ('Personal info', {'fields': ('name', 'surname', 'school', 'emergency_contact')}),
        ('Permissions', {'fields': ('is_active', 'is_staff', 'groups', 'user_permissions')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'name', 'surname', 'password1', 'password2', 'school', 'emergency_contact'),
        }),
    )
    list_display = (
        'id', 'email', 'name', 'surname', 'school', 'emergency_contact', 'created_date', 'last_login',
        'updated_date',
        'is_staff', 'get_total_number_of_class')
    search_fields = ('email', 'name', 'surname')
    ordering = ('id',)

    def get_total_number_of_class(self, obj):
        return obj.classrooms.all().count()

    get_total_number_of_class.short_description = "Total Class Created"


class StudentAdmin(admin.ModelAdmin):
    model = Student
    fieldsets = (
        ('Personal info', {'fields': (
            'name', 'surname', 'father_name','email', 'icon', 'secret_word', 'age', 'school', 'class_number', 'classroom',
            'emergency_contact', 'emergency_confirmed')}),
        ('Permissions', {'fields': ('is_active', 'is_staff', 'groups', 'user_permissions')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('name', 'surname', 'school', 'emergency_contact', 'age'),
        }),
    )
    list_display = (
        "id", "name", "surname", 'email', 'icon', 'secret_word', "age", "school", "class_number", "classroom",
        "emergency_contact", "emergency_confirmed", "created_date", 'login_date', "updated_date", "get_total_answers",
        "get_total_correct_answers", "get_total_wrong_answers")
    search_fields = ('name', 'surname', 'email', 'emergency_contact',"school", "get_total_answers",
        "get_total_correct_answers", "get_total_wrong_answers")
    list_filter = [
         "age", "school", "class_number", "classroom",
       "emergency_confirmed"
       ]
    ordering = ('id',)

    def get_form(self, request, obj=None, **kwargs):
        form = super(StudentAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['email'].required = False
        form.base_fields['secret_word'].required = False
        form.base_fields['icon'].required = False
        form.base_fields['emergency_confirmed'].required = True
        return form

    def get_total_answers(self):
        return Answer.objects.count()

    def get_total_correct_answers(self, obj):
        return Answer.objects.filter(answeredBy=obj, is_correct=True).count()

    def get_total_wrong_answers(self, obj):
        return Answer.objects.count() - Answer.objects.filter(answeredBy=obj, is_correct=True).count()

    get_total_answers.short_description = 'Total Answered Questions'
    get_total_wrong_answers.short_description = "Total Wrong Answered Questions"
    get_total_correct_answers.short_description = 'Total Correct Answered Questions'


class SchoolAdmin(admin.ModelAdmin):
    list_display = ("id", "name", "phone_number", "location")
    search_fields = ('name', 'phone_number', 'location')
    list_filter = ['name', 'phone_number', 'location']
    ordering = ('id',)

class ClassroomAdmin(admin.ModelAdmin):
    list_display = ("id", "name", "created_by", "created_date", "updated_date", 'get_total_students')
    search_fields = ('name', 'created_by')
    list_filter = ['created_by']
    ordering = ('id',)

    def get_total_students(self, obj):
        return obj.students.all().count()
    get_total_students.short_description = 'Total Students'

class TaskAdmin(admin.ModelAdmin):
    list_display = ("id", "name", "created_by", "created_date", "updated_date")
    search_fields = ('name', 'created_by')
    list_filter = ['created_by']
    ordering = ('id',)

class AnswerAdmin(admin.ModelAdmin):
    list_display = ("id", "name", "answered_by", "question", "is_correct", "created_date", "updated_date")
    fieldsets = (
        (
            None, {
                'fields': (
                     "name", "answered_by", "question",
                ),
            }
        ),
    )
    list_filter = ['answered_by', 'is_correct']
    search_fields = ('name', 'question', 'answered_by')
    ordering = ('id',)

class QuestionAdmin(admin.ModelAdmin):
    list_display = (
        "id", "name", "created_by", "correct_answer", "question_type", "created_date", "updated_date",
        "get_total_answers", "get_total_correct_answers", 'get_total_wrong_answers')  # puzzle_img
    search_fields = ('question_type', 'name', 'created_by')
    list_filter = ['created_by']
    ordering = ('id',)
    def get_total_answers(self, obj):
        return obj.answers.all().count()

    def get_total_correct_answers(self, obj):
        return obj.answers.filter(is_correct=True).count()

    def get_total_wrong_answers(self, obj):
        return obj.answers.all().count() - obj.answers.filter(is_correct=True).count()
    get_total_answers.short_description = 'Total Answered'
    get_total_wrong_answers.short_description = "Total Wrong Answered"
    get_total_correct_answers.short_description = 'Total Correct Answered'


admin.site.register(School, SchoolAdmin)
admin.site.register(Task, TaskAdmin)
admin.site.register(Classroom, ClassroomAdmin)
admin.site.register(Question, QuestionAdmin)
admin.site.register(Student, StudentAdmin)
admin.site.register(Answer, AnswerAdmin)
admin.site.register(Admin, AdminAdmin)
admin.site.register(Teacher, TeacherAdmin)
