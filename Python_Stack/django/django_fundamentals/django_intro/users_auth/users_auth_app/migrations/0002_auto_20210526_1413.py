# Generated by Django 3.2.3 on 2021-05-26 11:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users_auth_app', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user',
            old_name='username',
            new_name='firstname',
        ),
        migrations.AddField(
            model_name='user',
            name='lastname',
            field=models.CharField(default=' ', max_length=255),
            preserve_default=False,
        ),
    ]
