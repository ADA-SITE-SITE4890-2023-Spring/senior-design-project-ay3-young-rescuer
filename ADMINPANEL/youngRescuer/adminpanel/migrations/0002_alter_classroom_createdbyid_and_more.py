# Generated by Django 4.1.6 on 2023-02-15 22:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('adminpanel', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='classroom',
            name='createdById',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='adminpanel.teacher'),
        ),
        migrations.AlterField(
            model_name='student',
            name='classroom_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='adminpanel.classroom'),
        ),
        migrations.AlterField(
            model_name='student',
            name='shcool_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='adminpanel.school'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='shcool_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='adminpanel.school'),
        ),
    ]
