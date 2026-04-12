from django.shortcuts import render

def home(request):
    return render(request, "tasks/Home.html")

def create_task(request):
    return render(request, "tasks/CreateTask.html")