# Generated by Django 4.2.3 on 2023-07-20 09:26

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('seller', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='pprice',
            new_name='price',
        ),
    ]
