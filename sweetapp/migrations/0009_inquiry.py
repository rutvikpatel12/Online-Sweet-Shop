# Generated by Django 4.1.1 on 2022-12-05 14:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sweetapp', '0008_alter_order_status_profile'),
    ]

    operations = [
        migrations.CreateModel(
            name='Inquiry',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstname', models.CharField(max_length=50)),
                ('lastname', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=50)),
                ('contact', models.CharField(max_length=13)),
                ('message', models.TextField()),
            ],
        ),
    ]