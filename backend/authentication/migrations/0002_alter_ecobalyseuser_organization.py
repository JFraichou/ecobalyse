# Generated by Django 5.0.4 on 2024-04-17 09:40

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("authentication", "0001_initial"),
    ]

    operations = [
        migrations.AlterField(
            model_name="ecobalyseuser",
            name="organization",
            field=models.CharField(
                blank=True, default="", max_length=150, verbose_name="Company"
            ),
        ),
    ]