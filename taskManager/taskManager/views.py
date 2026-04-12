from django.shortcuts import render

def home(request):
    return render(request, "taskManager/Home.html")

def create_task(request):
    return render(request, "taskManager/CreateTask.html")