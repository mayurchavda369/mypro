# Generated by Django 4.2.3 on 2023-07-18 15:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='propic',
            field=models.FileField(default='anonymous.jpg', upload_to='user_profile/'),
        ),
    ]