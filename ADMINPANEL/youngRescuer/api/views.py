from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.views import APIView
from datetime import datetime
from .serializers import StudentSerializer, ClassroomSerializer, SchoolSerializer, TeacherSerializer,QuestionSerializer, AnswerSerializer
from adminpanel.models import Student, Teacher, Classroom, Question, School, Answer
from rest_framework.generics import ListAPIView, CreateAPIView, ListCreateAPIView, RetrieveUpdateDestroyAPIView
from rest_framework.permissions import BasePermission, IsAuthenticated


# @app_view(['GET','POST','DELETE'])
@api_view(['GET'])
def getRoutes(request):
    routes = [
        # ----------------------TEACHERS----------------
        {
            'Endpoint': '/teachers/',
            'method': 'GET',
            'body': None,
            'description': 'Returns an array of notes'
        },
        {
            'Endpoint': '/teachers/id',
            'method': 'GET',
            'body': None,
            'description': 'Returns a single note object'
        },
        {
            'Endpoint': '/teachers/create/',
            'method': 'POST',
            'body': {'body': ""},
            'description': 'Creates new note with data sent in post request'
        },
        {
            'Endpoint': '/teachers/id/update/',
            'method': 'PUT',
            'body': {'body': ""},
            'description': 'Creates an existing note with data sent in'
        },
        {
            'Endpoint': '/teachers/id/delete/',
            'method': 'DELETE',
            'body': None,
            'description': 'Deletes and exiting note'
        },
        # ----------------SCHOOLS--------------
        {
            'Endpoint': '/schools/',
            'method': 'GET',
            'body': None,
            'description': 'Returns an array of notes'
        },
        {
            'Endpoint': '/schools/id',
            'method': 'GET',
            'body': None,
            'description': 'Returns a single note object'
        },
        {
            'Endpoint': '/schools/create/',
            'method': 'POST',
            'body': {'body': ""},
            'description': 'Creates new note with data sent in post request'
        },
        {
            'Endpoint': '/schools/id/update/',
            'method': 'PUT',
            'body': {'body': ""},
            'description': 'Creates an existing note with data sent in'
        },
        {
            'Endpoint': '/schools/id/delete/',
            'method': 'DELETE',
            'body': None,
            'description': 'Deletes and exiting note'
        },
        # -------------------QUESTIONS----------------
        {
            'Endpoint': '/questions/',
            'method': 'GET',
            'body': None,
            'description': 'Returns an array of notes'
        },
        {
            'Endpoint': '/questions/id',
            'method': 'GET',
            'body': None,
            'description': 'Returns a single note object'
        },
        {
            'Endpoint': '/questions/create/',
            'method': 'POST',
            'body': {'body': ""},
            'description': 'Creates new note with data sent in post request'
        },
        {
            'Endpoint': '/questions/id/update/',
            'method': 'PUT',
            'body': {'body': ""},
            'description': 'Creates an existing note with data sent in'
        },
        {
            'Endpoint': '/questions/id/delete/',
            'method': 'DELETE',
            'body': None,
            'description': 'Deletes and exiting note'
        },
        # ----------------------CLASSROOMS------------------
        {
            'Endpoint': '/classrooms/',
            'method': 'GET',
            'body': None,
            'description': 'Returns an array of notes'
        },
        {
            'Endpoint': '/classrooms/id',
            'method': 'GET',
            'body': None,
            'description': 'Returns a single note object'
        },
        {
            'Endpoint': '/classrooms/create/',
            'method': 'POST',
            'body': {'body': ""},
            'description': 'Creates new note with data sent in post request'
        },
        {
            'Endpoint': '/classrooms/id/update/',
            'method': 'PUT',
            'body': {'body': ""},
            'description': 'Creates an existing note with data sent in'
        },
        {
            'Endpoint': '/classrooms/id/delete/',
            'method': 'DELETE',
            'body': None,
            'description': 'Deletes and exiting note'
        },
        # -------------Student-----------------
        {
            'Endpoint': '/students/',
            'method': 'GET',
            'body': None,
            'description': 'Returns an array of notes'
        },
        {
            'Endpoint': '/students/id',
            'method': 'GET',
            'body': None,
            'description': 'Returns a single note object'
        },
        {
            'Endpoint': '/students/create/',
            'method': 'POST',
            'body': {'body': ""},
            'description': 'Creates new note with data sent in post request'
        },
        {
            'Endpoint': '/students/id/update/',
            'method': 'PUT',
            'body': {'body': ""},
            'description': 'Creates an existing note with data sent in'
        },
        {
            'Endpoint': '/students/id/delete/',
            'method': 'DELETE',
            'body': None,
            'description': 'Deletes and exiting note'
        }
    ]
    return Response(routes)


# class MyGroupPermission(BasePermission):
#     """
#     Permission class to restrict access to members of a specific group.
#     """
#     def __init__(self, group_name):
#         self.group_name = group_name
#
#     def has_permission(self, request, view):
#         return request.user.groups.filter(name=self.group_name).exists()

# ------------------------------------GET OBJECTS--------------


# class OnlyAuthUsers(BasePermission):
#
#     def has_permission(self, request, view):
#         return False


# @login_required(login_url='/userlogin/')
# def teacher_view(request):
#     return render(request, 'register.html')

@api_view(['GET'])
def addStudent(request,n):
    classroom = Classroom.objects.get(name=n)
    print(type(classroom.id))
    if n == classroom.name:
        student = Student.objects.create(classroom_id=Classroom.objects.get(name=n),loginTimeStamp=datetime.utcnow().strftime('%Y-%m-%dT%H:%M:%S.%fZ'))
        serializer = StudentSerializer(student, many=False)
        return Response(serializer.data)
    else:
        return Response("Classroom does not exist")


class StudentView(ListCreateAPIView): #only teacher access
    queryset = Student.objects.all()
    serializer_class = StudentSerializer
    permission_classes = [IsAuthenticated]

class RUDStudentView(RetrieveUpdateDestroyAPIView):
    queryset = Student.objects.all()
    serializer_class = StudentSerializer
    permission_classes = [IsAuthenticated]


class TeacherView(ListCreateAPIView):
    queryset = Teacher.objects.all()
    serializer_class = TeacherSerializer
    permission_classes = [IsAuthenticated]

class RUDTeacherView(RetrieveUpdateDestroyAPIView):
    queryset = Teacher.objects.all()
    serializer_class = TeacherSerializer
    permission_classes = [IsAuthenticated]

class SchoolView(ListCreateAPIView):
    queryset = School.objects.all()
    serializer_class = SchoolSerializer
    permission_classes = [IsAuthenticated]

class RUDTSchoolView(RetrieveUpdateDestroyAPIView):
    queryset = School.objects.all()
    serializer_class = SchoolSerializer
    permission_classes = [IsAuthenticated]

class QuestionView(ListCreateAPIView):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAuthenticated]

class RUDQuestionView(RetrieveUpdateDestroyAPIView):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAuthenticated]

class ClassroomView(ListCreateAPIView):
    queryset = Classroom.objects.all()
    serializer_class = ClassroomSerializer
    permission_classes = [IsAuthenticated]

class RUDClassroomView(RetrieveUpdateDestroyAPIView):
    queryset = Classroom.objects.all()
    serializer_class = ClassroomSerializer
    permission_classes = [IsAuthenticated]

class AnswerView(ListCreateAPIView):
    queryset = Answer.objects.all()
    serializer_class = AnswerSerializer
    permission_classes = [IsAuthenticated]

class RUDAnswerView(RetrieveUpdateDestroyAPIView):
    queryset = Answer.objects.all()
    serializer_class = AnswerSerializer
    permission_classes = [IsAuthenticated]

class CheckAnswer(APIView):
    def get(self, request, answer_id):
        answer = Answer.objects.get(id=answer_id)
        question = Question.objects.get(id=answer.question_id.id)
        is_correct = (answer.name == question.correct_answer)
        answer.is_correct=is_correct
        answer.save()
        return Response(
            {'question': question.name,
             'correct_answer': question.correct_answer,
             'user_answer':answer.name,
             'is_correct':is_correct
             }
        )


