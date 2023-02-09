from django.db import models
from django import forms
from django.core.validators import MinValueValidator,MaxValueValidator

# Create your models here.

class MES(models.Model):
    name = models.CharField(max_length=50, null=False)
    surname = models.CharField(max_length=50, null=False)
    email = models.EmailField(max_length=20)
    password=models.CharField(max_length=8,null=False)
    department=models.CharField(max_length=100,null=False)
    loginTimeStamp=models.DateTimeField(auto_now_add=True)
    createdTimeStamp = models.DateTimeField(auto_now_add=True)
    updatedTimeStamp = models.DateTimeField(auto_now_add=True)

class School(models.Model):
    name = models.CharField(max_length=50, null=False)
    school_number=models.IntegerField(null=False)
    location=models.CharField(max_length=100,null=False)

class Teacher(models.Model):
    name = models.CharField(max_length=50, null=False)
    surname = models.CharField(max_length=50, null=False)
    shcool_id = models.ForeignKey(School, on_delete=models.CASCADE)
    number_of_created_classroom=models.IntegerField(default=0)
    emergency_contact=models.CharField(max_length=14,null=False)
    createdTimeStamp = models.DateTimeField(auto_now_add=True)
    updatedTimeStamp = models.DateTimeField(auto_now_add=True)

class Classroom(models.Model):
    name = models.CharField(max_length=50, null=False)
    num_of_students=models.IntegerField(validators=[MaxValueValidator(30)])
    createdById=models.ForeignKey(Teacher,on_delete=models.CASCADE)
    gameType=models.CharField(max_length=50)
    createdTimeStamp = models.DateTimeField(auto_now_add=True)
    updatedTimeStamp = models.DateTimeField(auto_now=True)

class Student(models.Model):
    name = models.CharField(max_length=50, null=False)
    surname = models.CharField(max_length=50,null=False)
    age = models.CharField(max_length=50)
    shcool_id=models.ForeignKey(School,on_delete=models.CASCADE)
    class_number=models.IntegerField(null=False)
    classroom_id=models.ForeignKey(Classroom,on_delete=models.CASCADE)
    number_of_answers=models.IntegerField(default=0)
    number_of_correct_answers=models.IntegerField(default=0)
    number_of_wrong_answers=models.IntegerField(default=0)
    current_level=models.CharField(max_length=10,null=False)
    emergency_contact=models.CharField(max_length=14,null=False)
    emergency_confirmed=models.BooleanField(default=False)
    createdTimeStamp = models.DateTimeField(auto_now_add=True)
    updatedTimeStamp = models.DateTimeField(auto_now_add=True)

class Question(models.Model):
    name=models.CharField(max_length=100,null=False)
    level=models.CharField(max_length=10,null=False)
    correct_answer=models.CharField(max_length=100,null=False)
    number_of_displayed=models.IntegerField(default=0)
    number_of_correct_answered=models.BigIntegerField()
    number_of_wrong_answered=models.BigIntegerField()
    createdTimeStamp = models.DateTimeField(auto_now_add=True)
    updatedTimeStamp = models.DateTimeField(auto_now=True)



