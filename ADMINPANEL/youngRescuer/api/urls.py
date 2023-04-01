from django.contrib.auth.views import LogoutView
from django.urls import path
from api import views
from api.views import CheckAnswer, LoginView, LoginTeacherView
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

urlpatterns = [
    path('',views.getRoutes),
    # path('userlogin/',views.teacher_view),
    # path('classrooms/class/<str:n>',views.addStudent),
    path('students/',views.StudentView.as_view()),
    path('teachers/',views.TeacherView.as_view()),
    path('questions/', views.QuestionView.as_view()),
    path('schools/', views.SchoolView.as_view()),
    path('classrooms/', views.ClassroomView.as_view()),
    path('answers/', views.AnswerView.as_view()),
    path('answers/<int:pk>', views.RUDAnswerView.as_view()),
    path('students/<int:pk>', views.RUDStudentView.as_view()),
    path('classrooms/<int:pk>', views.RUDClassroomView.as_view()),
    path('teachers/<int:pk>', views.RUDTeacherView.as_view()),
    path('classrooms/<int:pk>', views.RUDClassroomView.as_view()),
    path('questions/<int:pk>', views.RUDQuestionView.as_view()),
    path('answers/<int:answer_id>/check/', CheckAnswer.as_view()),

    path('teachers/login',LoginView.as_view()),
    path('teachers/login/view',LoginTeacherView.as_view()),
    path('teachers/logout',LogoutView.as_view()),

    path('login/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),

]


