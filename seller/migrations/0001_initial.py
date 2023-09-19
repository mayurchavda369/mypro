# Generated by Django 4.2.3 on 2023-07-19 06:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Seller_User',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=254, unique=True)),
                ('password', models.CharField(max_length=100)),
                ('propic', models.FileField(default='anonymous.jpg', upload_to='seller_profile/')),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ppic', models.FileField(default='anonymous.jpg', upload_to='product_image/')),
                ('pname', models.CharField(max_length=50)),
                ('pprice', models.IntegerField(default=0)),
                ('qty', models.IntegerField(default=0)),
                ('desc', models.CharField(max_length=500)),
                ('seller', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='seller.seller_user')),
            ],
        ),
    ]
