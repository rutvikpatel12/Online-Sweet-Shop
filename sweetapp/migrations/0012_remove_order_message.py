# Generated by Django 4.1.1 on 2022-12-11 08:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sweetapp', '0011_remove_profile_fname_remove_profile_lname_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='message',
        ),
    ]