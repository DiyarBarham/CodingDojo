from django.urls import path

from . import views

urlpatterns = [
    path('', views.index),
    path('processbook', views.book),
    path('books/<number>', views.bookview),
    path('authors', views.authors),
    path('processauthor', views.author),
    path('authors/<number>', views.authorview)
]