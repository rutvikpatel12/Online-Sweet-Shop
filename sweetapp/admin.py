from django.contrib import admin
from .models import *

# Register your models here.

# class AdminCategory(admin.ModelAdmin):
#     list_display = ['name' , 'status' ]

admin.site.register(Category)
admin.site.register(Product)
admin.site.register(Cart)
admin.site.register(Order)
admin.site.register(OrderItem)
admin.site.register(Profile)