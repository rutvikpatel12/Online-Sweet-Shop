# Generated by Django 4.1.1 on 2022-12-13 18:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sweetapp', '0015_rename_fname_order_first_name_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='first_name',
            new_name='fname',
        ),
        migrations.RenameField(
            model_name='order',
            old_name='last_name',
            new_name='lname',
        ),
    ]
