from django.contrib.auth.base_user import BaseUserManager, AbstractBaseUser
from django.contrib.auth.models import PermissionsMixin, Permission
from django.db import models
from django.contrib.auth.models import Group
from django.utils import timezone

#Deyishilmeli qruplashma 5-10 11-15 16+
class StudentManager(BaseUserManager):
    def create_user(self, pk):
        user = self.model(
            id=pk,
        )
        user.save(using=self._db)
        return user

    def create_superuser(self, pk):
        raise ValueError('Superuser cannot be created for Student model')


class CustomUserManager(BaseUserManager):
    def create_superuser(self, email, password, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self.create_user(email, password, **extra_fields)

    def create_user(self, email, password=None, **extra_fields):
        if not email:
            raise ValueError('The Email field must be set')
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save()
        return user


class Admin(AbstractBaseUser, PermissionsMixin):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    surname = models.CharField(max_length=50)
    email = models.EmailField(unique=True)
    department = models.CharField(max_length=100, null=True)
    created_date = models.DateTimeField(auto_now_add=True)
    last_login = models.DateTimeField(null=True, blank=True)
    updated_date = models.DateTimeField(auto_now=True)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    groups = models.ManyToManyField(Group, verbose_name='groups', blank=True, related_name='admin_groups')
    user_permissions = models.ManyToManyField(Permission, verbose_name='user permissions', blank=True,
                                              related_name='admin_user_permissions')
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name', 'surname']

    def update_last_login(self):
        # Update the last_login_date field whenever a user logs in
        self.last_login_date = timezone.now()
        self.save()

    objects = CustomUserManager()

    def __str__(self):
        return self.email


class School(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50, null=True)
    phone_number = models.CharField(max_length=50, null=True)
    location = models.CharField(max_length=100, null=True)


class Teacher(AbstractBaseUser, PermissionsMixin):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50,null=True)
    surname = models.CharField(max_length=50,null=True)
    email = models.EmailField(unique=True)
    school_id = models.ForeignKey(School, on_delete=models.CASCADE, blank=True, null=True, related_name="teachers")
    emergency_contact = models.CharField(max_length=14, null=True)
    created_date = models.DateTimeField(auto_now_add=True)
    last_login = models.DateTimeField(null=True, blank=True)
    updated_date = models.DateTimeField(auto_now=True)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=True)
    groups = models.ManyToManyField(Group, verbose_name='groups', blank=True, related_name='teacher_groups')
    user_permissions = models.ManyToManyField(Permission, verbose_name='user permissions', blank=True,
                                              related_name='teacher_user_permissions')
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name', 'surname']

    def update_last_login(self):
        self.last_login_date = timezone.now()
        self.save()

    objects = CustomUserManager()

    def __str__(self):
        return self.email


class Classroom(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50, null=True, unique=True)
    created_by = models.ForeignKey(Teacher, on_delete=models.CASCADE, blank=True, null=True,
                                   related_name="classrooms")  # null=False
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

class Images(models.Model):
    id = models.AutoField(primary_key=True)
    icon=models.ImageField(upload_to="icon/",null=True)

class Student(AbstractBaseUser):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50, null=True)
    surname = models.CharField(max_length=50, null=True)
    age = models.CharField(max_length=50, null=True)
    email=models.EmailField(null=True) #unique=True
    secret_word=models.CharField(max_length=100,null=True)
    icon=models.OneToOneField(Images, on_delete=models.CASCADE)
    school_id = models.ForeignKey(School, on_delete=models.CASCADE, blank=True, null=True, related_name="students")
    class_number = models.IntegerField(null=True)
    classroom_id = models.ForeignKey(Classroom, on_delete=models.CASCADE, blank=True, null=True,
                                     related_name="students")
    emergency_contact = models.CharField(max_length=14, null=True)
    emergency_confirmed = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=True)
    groups = models.ManyToManyField(Group, verbose_name='groups', blank=True, related_name='student_groups')
    user_permissions = models.ManyToManyField(Permission, verbose_name='user permissions', blank=True,related_name='student_user_permissions')
    created_date = models.DateTimeField(auto_now_add=True)
    login_date = models.DateTimeField(null=True)
    updated_date = models.DateTimeField(auto_now=True)

    objects = StudentManager()

    REQUIRED_FIELDS = ['name', 'surname', 'age', 'school_id', 'class_number', 'classroom_id', 'emergency_contact','emergency_confirmed']

    def __str__(self):
        return self.id

    def has_perm(self, perm, obj=None):
        return False

    def has_module_perms(self, app_label):
        return False

    def update_last_login(self):
        self.last_login_date = timezone.now()
        self.save()

class Question(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=1000, null=True)
    created_by = models.ForeignKey(Teacher, on_delete=models.CASCADE, blank=True, null=True, related_name="questions")
    correct_answer = models.CharField(max_length=1000, null=True)
    question_type = models.CharField(max_length=100, null=True)
    text_answer = models.TextField(null=True, default="No Text")
    puzzle_img = models.ImageField(upload_to='puzzle/', null=True) #upload to hissesinde sehv var duzelt
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)


class Answer(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=1000, null=True)
    answered_by = models.ForeignKey(Student, on_delete=models.CASCADE, blank=True, null=True, related_name="students")
    question_id = models.ForeignKey(Question, on_delete=models.CASCADE, blank=True, null=True, related_name="answers")
    is_correct = models.BooleanField(default=False)
    answer_img = models.ImageField(upload_to='answer/', null=True) #upload to hissesinde sehv var duzelt
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

