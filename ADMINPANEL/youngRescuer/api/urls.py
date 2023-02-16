from django.urls import path
from api import views

urlpatterns = [
    path('',views.getRoutes),

    #getobjects
    path('students/',views.getStudents),
    path('teachers/',views.getTeachers),
    path('classrooms/',views.getClassrooms),
    path('questions/',views.getQuestions),
    path('schools/',views.getSchools),

    #createobject
    path('students/create/', views.createStudent),
    path('teachers/create/', views.createTeacher),
    path('classrooms/create/', views.createClassroom),
    path('questions/create/', views.createQuestion),
    path('schools/create/', views.createSchool),

    # updateobject
    path('students/<str:pk>/update/', views.updateStudent),
    path('teachers/<str:pk>/update/', views.updateTeacher),
    path('classrooms/<str:pk>/update/', views.updateClassroom),
    path('questions/<str:pk>/update/', views.updateQuestion),
    path('schools/<str:pk>/update/', views.updateSchool),

    #deleteobject
    path('students/<str:pk>/delete/', views.deleteStudent),
    path('teachers/<str:pk>/delete/', views.deleteTeacher),
    path('classrooms/<str:pk>/delete/', views.deleteClassroom),
    path('questions/<str:pk>/delete/', views.deleteQuestion),
    path('schools/<str:pk>/delete/', views.deleteSchool),

    #getobject
    path('students/<str:pk>',views.getStudent),
    path('teachers/<str:pk>',views.getTeacher),
    path('classrooms/<str:pk>',views.getClassroom),
    path('questions/<str:pk>',views.getQuestion),
    path('schools/<str:pk>',views.getSchool)
]
