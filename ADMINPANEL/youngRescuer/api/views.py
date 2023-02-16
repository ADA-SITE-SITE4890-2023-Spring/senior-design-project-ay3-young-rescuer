from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import StudentSerializer, ClassroomSerializer, SchoolSerializer, TeacherSerializer, QuestionSerializer
from adminpanel.models import Student, Teacher, Classroom, Question, School


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


# ------------------------------------GET OBJECTS--------------

@api_view(['GET'])
def getStudents(request):
    students = Student.objects.all()
    serializer = StudentSerializer(students, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getTeachers(request):
    teachers = Teacher.objects.all()
    serializer = TeacherSerializer(teachers, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getSchools(request):
    schools = School.objects.all()
    serializer = SchoolSerializer(schools, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getClassrooms(request):
    classrooms = Classroom.objects.all()
    serializer = ClassroomSerializer(classrooms, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def getQuestions(request):
    questions = Question.objects.all()
    serializer = QuestionSerializer(questions, many=True)
    return Response(serializer.data)


# ------------------------------------GET OBJECT--------------
@api_view(['GET'])
def getStudent(request, pk):
    student = Student.objects.get(id=pk)
    serializer = StudentSerializer(student, many=False)
    return Response(serializer.data)


@api_view(['GET'])
def getTeacher(request, pk):
    teacher = Teacher.objects.get(id=pk)
    serializer = TeacherSerializer(teacher, many=False)
    return Response(serializer.data)


@api_view(['GET'])
def getSchool(request, pk):
    school = School.objects.get(id=pk)
    serializer = SchoolSerializer(school, many=False)
    return Response(serializer.data)


@api_view(['GET'])
def getClassroom(request, pk):
    classroom = Classroom.objects.get(id=pk)
    serializer = ClassroomSerializer(classroom, many=False)
    return Response(serializer.data)


@api_view(['GET'])
def getQuestion(request, pk):
    question = Question.objects.get(id=pk)
    serializer = QuestionSerializer(question, many=False)
    return Response(serializer.data)


# -----------------------CREATE OBJECT-----------------

@api_view(['POST'])
def createStudent(request):
    data = request.data
    student = Student.objects.create(
        name=data["name"],
        surname=data["surname"],
        age=data["age"],
        school_id=data["school_id"],
        class_number=data["class_number"],
        classroom_id=data["classroom_id"],
        number_of_answers=data["number_of_answers"],
        number_of_correct_answers=data["number_of_correct_answers"],
        number_of_wrong_answers=data["number_of_wrong_answers"],
        current_level=data["current_level"],
        emergency_contact=data["emergency_contact"],
        emergency_confirmed=data["emergency_confirmed"],
    )
    serializer = StudentSerializer(student, many=False)
    return Response(serializer.data)


@api_view(['POST'])
def createSchool(request):
    data = request.data
    school = School.objects.create(
        name=data['name'],
        school_number=data['school_number'],
        location=data['location']
    )
    serializer = SchoolSerializer(school, many=False)
    return Response(serializer.data)


@api_view(['POST'])
def createQuestion(request):
    data = request.data
    question = Question.objects.create(
        name=data['name'],
        level=data['level'],
        correct_answer=data['correct_answer'],
        number_of_displayed=data['number_of_displayed'],
        number_of_correct_answered=data['number_of_correct_answered'],
        number_of_wrong_answered=data['number_of_wrong_answered'],
    )
    serializer = QuestionSerializer(question, many=False)
    return Response(serializer.data)


@api_view(['POST'])
def createClassroom(request):
    data = request.data
    classroom = Classroom.objects.create(
        name=data['name'],
        num_of_students=data['num_of_students'],
        createdById=data['createdById'],
        gameType=data['gameType'],
    )
    serializer = ClassroomSerializer(classroom, many=False)
    return Response(serializer.data)


@api_view(['POST'])
def createTeacher(request):
    data = request.data
    teacher = Teacher.objects.create(
        name=data['name'],
        surname=data['surname'],
        school_id=data['school_id'],
        number_of_created_classroom=data['number_of_created_classroom'],
        emergency_contact=data['emergency_contact'],
    )
    serializer = TeacherSerializer(teacher, many=False)
    return Response(serializer.data)


# ------------------------------UPDATE OBJECT--------------------

@api_view(['PUT'])
def updateSchool(request, pk):
    school = School.objects.get(id=pk)
    serializer = SchoolSerializer(school, data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


@api_view(['PUT'])
def updateStudent(request, pk):
    student = Student.objects.get(id=pk)
    serializer = StudentSerializer(student, data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


@api_view(['PUT'])
def updateClassroom(request, pk):
    classroom = Classroom.objects.get(id=pk)
    serializer = ClassroomSerializer(classroom, data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


@api_view(['PUT'])
def updateQuestion(request, pk):
    question = Question.objects.get(id=pk)
    serializer = QuestionSerializer(question, data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


@api_view(['PUT'])
def updateTeacher(request, pk):
    teacher = Teacher.objects.get(id=pk)
    serializer = TeacherSerializer(teacher, data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


#-------------------------DELETE OBJECT--------------------
@api_view(['DELETE'])
def deleteSchool(request, pk):
    school = School.objects.get(id=pk)
    sname=school.name
    school.delete()
    return Response(f"{sname} has been deleted!")

@api_view(['DELETE'])
def deleteStudent(request, pk):
    student = Student.objects.get(id=pk)
    fname=student.name
    sname=student.surname
    student.delete()
    return Response(f"{fname} {sname} has been deleted!")

@api_view(['DELETE'])
def deleteQuestion(request, pk):
    question = Question.objects.get(id=pk)
    qid=question.id
    question.delete()
    return Response(f"Question - {qid} has been deleted!")

@api_view(['DELETE'])
def deleteClassroom(request, pk):
    classroom = Classroom.objects.get(id=pk)
    sname=classroom.name
    classroom.delete()
    return Response(f"{sname} has been deleted!")

@api_view(['DELETE'])
def deleteTeacher(request, pk):
    teacher = Teacher.objects.get(id=pk)
    fname=teacher.name
    sname = teacher.surname
    teacher.delete()
    return Response(f"{fname} {sname} has been deleted!")


