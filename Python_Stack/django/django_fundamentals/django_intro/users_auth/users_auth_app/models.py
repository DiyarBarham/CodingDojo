from django.db import models
import re
class UserManager(models.Manager):
    def basic_validator(self, postData):
        errors = {}
        # add keys and values to errors dictionary for each invalid field
        if len(postData['firstname']) < 2 or not re.compile(r'^[a-zA-Z}+$'):
            errors["firstname"] = "first name should be at least 2 characters"
        if len(postData['lastname']) < 2:
            errors["lastname"] = "last name should be at least 2 characters"

        if len(postData['passwd']) < 8 or postData['passwd']!=postData['confirmpass']:
            errors["password"] = "Password description should be at least 8 characters"
        EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
        if not EMAIL_REGEX.match(postData['email']):  # test whether a field matches the pattern
            errors['email'] = "Invalid email address!"
        return errors
# Create your models here.
class User(models.Model):
    firstname = models.CharField(max_length=255)
    lastname = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    address = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    objects = UserManager()