class Person :
    def __init__(self,first_name,last_name,age):
        self.first_name = first_name
        self.last_name = last_name
        self.age = age

p1 = Person('John','Mahire',28)
p2 = Person('Vishal','Mahire',29)

print(p1.first_name)
print(p2.first_name)

class Laptop:
    def __init__(self,brand_name,model_name,price):  # __init__ is method here
        self.brand_name = brand_name
        self.model_name = model_name
        self.price = price

L1 = Laptop ('HP','Pavellion',50000)
L2 = Laptop('DELL','Pro',80000)

print(L1.brand_name,L1.model_name,L1.price)
print(L2.brand_name,L2.model_name,L2.price)









DATABASES



DATABASES = {
    "default": {
        "ENGINE": "mssql",
        "NAME": "python34",
        "USER": "",
        "PASSWORD": "",
        "HOST": "DESKTOP-QPEDHM8",
        "PORT": "",
        "OPTIONS": {"driver": "ODBC Driver 17 for SQL Server",
        },
    },
}








MODELS


from django.db import models

# Create your models here.
class prd_details(models.Model):
    name = models.CharField(max_length=20)
    prd_qnty = models.IntegerField()
    prd_price = models.FloatField()
    prd_loc = models.CharField(max_length=10)




ADMINS

admin.py


from django.contrib import admin
from .models import prd_details
# Register your models here.
class prd_detailsAdmin(admin.ModelAdmin):
    list_display = ['name','prd_qnty','prd_price','prd_loc']

admin.site.register(prd_details,prd_detailsAdmin)
