import jwt
from django.middleware.csrf import get_token
from django.views.decorators.csrf import csrf_protect, csrf_exempt
from jwt import *
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django.contrib.auth import logout
from django.middleware.csrf import get_token
from rest_framework.decorators import api_view
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.response import Response
from rest_framework.views import APIView
from datetime import datetime
from .serializers import StudentSerializer, ClassroomSerializer, SchoolSerializer, TeacherSerializer, \
    QuestionSerializer, AnswerSerializer
from adminpanel.models import Student, Teacher, Classroom, Question, School, Answer
from rest_framework.generics import ListAPIView, CreateAPIView, ListCreateAPIView, RetrieveUpdateDestroyAPIView
from rest_framework.permissions import BasePermission, IsAuthenticated
import jwt, datetime



@api_view(['GET'])
def getRoutes(request):
    routes = [
        {
            'Endpoint': '/teachers/',
            'method': 'GET',
            'body': None,
            'description': 'Hello'
        },

    ]
    return Response(routes)


class StudentView(ListCreateAPIView):
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
        answer.is_correct = is_correct
        answer.save()
        return Response(
            {'question': question.name,
             'correct_answer': question.correct_answer,
             'user_answer': answer.name,
             'is_correct': is_correct
             }
        )


class LoginView(APIView):
    def post(self, request):
        email = request.data["email"]
        password = request.data["password"]

        teacher = Teacher.objects.filter(email=email).first()

        if teacher is None:
            raise AuthenticationFailed("User not found!")
        if not teacher.check_password(password):
            raise AuthenticationFailed("Incorrect Password")
        payload = {
            'id': teacher.id,
            'exp': datetime.datetime.utcnow() + datetime.timedelta(minutes=60),
            'iat': datetime.datetime.utcnow()  # token created
        }
        token = str(jwt.encode(payload, 'secret', algorithm='HS256'))
        response = Response()
        csrf_token = get_token(request)
        response.set_cookie(key='jwt',value=token,httponly=True)

        response.data = {
            'X-CSRFToken': csrf_token,
            'jwt': token,
            "message": "Success"
        }
        teacher.last_login=datetime.datetime.now()
        teacher.save()
        return response


class LoginTeacherView(APIView):
    def get(self,request):
        token=request.COOKIES.get('jwt')
        if not token:
            raise AuthenticationFailed("Unauthorized")
        try:
            payload = jwt.decode(token,'secret',algorithms=['HS256'])
        except jwt.ExpiredSignatureError:
            raise AuthenticationFailed("Login Again")

        teacher=Teacher.objects.filter(id=payload['id']).first()
        serializer=TeacherSerializer(teacher)
        return Response(serializer.data)


class Logout(APIView):
    def post(self,request):
        response = Response()
        response.delete_cookie('jwt')
        response.data = {

            'message':'Success'
        }
        return response