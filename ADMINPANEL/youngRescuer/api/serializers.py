from rest_framework.serializers import ModelSerializer
from adminpanel.models import Student,Classroom,Question,School,Teacher

class StudentSerializer(ModelSerializer):
    class Meta:
        model=Student
        fields ='__all__'

class TeacherSerializer(ModelSerializer):
    class Meta:
        model=Teacher
        fields ='__all__'

class ClassroomSerializer(ModelSerializer):
    class Meta:
        model=Classroom
        fields ='__all__'

class QuestionSerializer(ModelSerializer):
    class Meta:
        model=Question
        fields ='__all__'

class SchoolSerializer(ModelSerializer):
    class Meta:
        model=School
        fields ='__all__'