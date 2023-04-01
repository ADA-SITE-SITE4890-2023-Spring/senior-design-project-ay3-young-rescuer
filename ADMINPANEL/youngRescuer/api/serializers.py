from rest_framework import serializers
from rest_framework.serializers import ModelSerializer,SerializerMethodField
from adminpanel.models import Student, Classroom, Question, School, Teacher, Answer

class StudentSerializer(ModelSerializer):
    class Meta:
        model=Student
        fields ='__all__'

class TeacherSerializer(ModelSerializer):
    class Meta:
        model=Teacher
        fields ='__all__'
        extra_kwargs = {'password': {'write_only': True}}

# class TeacherRegisterSerializer(ModelSerializer):
#     class Meta:
#         model=Teacher
#         fields ='__all__'
#         extra_kwargs={
#             "password": {"write_only": True}
#         }
#     def create(self,validated_data):
#         password=validated_data.pop("password",None)
#         instance=self.Meta.model(**validated_data)
#         if password is not None:
#             instance.set_password(password)
#         instance.save()
#         return instance

class ClassroomSerializer(ModelSerializer):
    class Meta:
        model=Classroom
        fields ='__all__'
        # fields=["id","studentCount"]
class AnswerSerializer(ModelSerializer):
    class Meta:
        model = Answer
        fields = '__all__'

class QuestionSerializer(ModelSerializer):
    answers = AnswerSerializer(many=True, read_only=True)
    class Meta:
        model = Question
        fields = '__all__'

class SchoolSerializer(ModelSerializer):
    class Meta:
        model=School
        fields ='__all__'

