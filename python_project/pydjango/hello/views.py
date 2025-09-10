from django.shortcuts import render
from django.http import HttpResponse
from .models import Greeting

# Create your views here.

def index(request):
    # Create a new greeting
    greeting = Greeting.objects.create(message="Hello ")
    # Get all greetings
    greetings = Greeting.objects.all()
    return render(request, 'hello/index.html', {'greetings': greetings})

def hello_view(request):
    return HttpResponse("Hello ")
