# Generated by Django 4.1.6 on 2023-02-26 21:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0006_alter_teacher_is_staff'),
    ]

    operations = [
        migrations.AlterField(
            model_name='admin',
            name='is_staff',
            field=models.BooleanField(default=False),
        ),
    ]