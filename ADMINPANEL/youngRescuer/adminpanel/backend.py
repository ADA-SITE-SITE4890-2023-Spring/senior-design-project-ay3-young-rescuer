# from django.contrib.auth.backends import ModelBackend
# from .models import Teacher, Student
#
#
# class TeacherBackend(ModelBackend):
#     def authenticate(self, request, temail=None, password=None, **kwargs):
#         try:
#             teacher = Teacher.objects.get(email=temail)
#         except Teacher.DoesNotExist:
#             return None
#
#         if teacher.check_password(password):
#             return teacher
#
# class StudentBackend(ModelBackend):
#     def authenticate(self, request, username=None, password=None, **kwargs):
#         try:
#             student = Student.objects.get(username=username)
#         except Student.DoesNotExist:
#             return None
#         if student.check_password(password):
#             return student
#
#
