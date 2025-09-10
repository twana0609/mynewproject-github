from django.urls import path
from .views import index, twana, simon

urlpatterns = [
    path('', index, name='index'),
    path('twana/', twana, name='twana'),
    path('simon/', simon, name='simon'),
]
