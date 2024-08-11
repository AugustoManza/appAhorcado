from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
    path('', views.home, name='home'),
    path('jugar/', views.jugar, name='jugar'),
    path('jugando/', views.jugando, name='jugando'),
    path('ver-estadisticas/', views.ver_estadisticas, name='ver_estadisticas'),
    path('ganaste/', views.ganaste, name='ganaste'),
    path('perdiste/', views.perdiste, name='perdiste'),
    # más rutas
]
