# Generated by Django 4.1.6 on 2023-04-22 23:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0002_rename_classroom_id_student_classroom_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='question',
            name='text_answer',
        ),
    ]