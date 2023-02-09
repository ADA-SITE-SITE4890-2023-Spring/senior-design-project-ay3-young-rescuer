# Generated by Django 4.1.6 on 2023-02-09 07:21

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Classroom',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('num_of_students', models.IntegerField(validators=[django.core.validators.MaxValueValidator(30)])),
                ('gameType', models.CharField(max_length=50)),
                ('createdTimeStamp', models.DateTimeField(auto_now_add=True)),
                ('updatedTimeStamp', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='MES',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('surname', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=20)),
                ('password', models.CharField(max_length=8)),
                ('department', models.CharField(max_length=100)),
                ('loginTimeStamp', models.DateTimeField()),
                ('createdTimeStamp', models.DateTimeField(auto_now_add=True)),
                ('updatedTimeStamp', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Question',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('level', models.CharField(max_length=10)),
                ('correct_answer', models.CharField(max_length=100)),
                ('number_of_displayed', models.IntegerField(default=0)),
                ('number_of_correct_answered', models.BigIntegerField()),
                ('number_of_wrong_answered', models.BigIntegerField()),
                ('createdTimeStamp', models.DateTimeField(auto_now_add=True)),
                ('updatedTimeStamp', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='School',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('school_number', models.IntegerField()),
                ('location', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('surname', models.CharField(max_length=50)),
                ('number_of_created_classroom', models.IntegerField(default=0)),
                ('emergency_contact', models.CharField(max_length=14)),
                ('createdTimeStamp', models.DateTimeField(auto_now_add=True)),
                ('updatedTimeStamp', models.DateTimeField(auto_now_add=True)),
                ('shcool_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.school')),
            ],
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('surname', models.CharField(max_length=50)),
                ('age', models.CharField(max_length=50)),
                ('class_number', models.IntegerField()),
                ('number_of_answers', models.IntegerField(default=0)),
                ('number_of_correct_answers', models.IntegerField(default=0)),
                ('number_of_wrong_answers', models.IntegerField(default=0)),
                ('current_level', models.CharField(max_length=10)),
                ('emergency_contact', models.CharField(max_length=14)),
                ('emergency_confirmed', models.BooleanField(default=False)),
                ('createdTimeStamp', models.DateTimeField(auto_now_add=True)),
                ('updatedTimeStamp', models.DateTimeField(auto_now_add=True)),
                ('classroom_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.classroom')),
                ('shcool_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.school')),
            ],
        ),
        migrations.AddField(
            model_name='classroom',
            name='createdById',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='adminpanel.teacher'),
        ),
    ]
