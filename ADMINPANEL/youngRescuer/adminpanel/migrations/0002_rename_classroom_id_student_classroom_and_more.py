# Generated by Django 4.1.6 on 2023-04-22 23:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='student',
            old_name='classroom_id',
            new_name='classroom',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='school_id',
            new_name='school',
        ),
        migrations.RenameField(
            model_name='teacher',
            old_name='school_id',
            new_name='school',
        ),
        migrations.AddField(
            model_name='student',
            name='father_name',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='answer',
            name='question',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='answers', to='adminpanel.question'),
        ),
    ]
