# Generated by Django 4.1.6 on 2023-02-26 21:54

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0004_remove_admin_createdtimestamp'),
    ]

    operations = [
        migrations.RenameField(
            model_name='admin',
            old_name='updatedTimeStamp',
            new_name='updated_date',
        ),
        migrations.RenameField(
            model_name='teacher',
            old_name='updatedTimeStamp',
            new_name='updated_date',
        ),
    ]
