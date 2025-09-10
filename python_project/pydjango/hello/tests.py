from django.test import TestCase
from .models import Greeting

class GreetingModelTest(TestCase):
    def test_greeting_creation(self):
        greeting = Greeting.objects.create(message="Test Greeting")
        self.assertEqual(greeting.message, "Test Greeting") 