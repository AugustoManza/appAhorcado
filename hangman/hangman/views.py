from django.shortcuts import render, redirect
from django.urls import reverse
from .models import Palabra, Estadistica
import random


def home(request):
    return render(request, 'hangman/home.html')


def jugar(request):
    if request.method == 'POST':
        nombre = request.POST['nombre']
        nivel = request.POST['nivel']
        # Guardar nombre y nivel en la sesión
        request.session['nombre'] = nombre
        request.session['nivel'] = nivel
        return redirect('jugando')
    return render(request, 'hangman/jugar.html')


def ver_estadisticas(request):
    nivel = request.GET.get('nivel')

    estadisticas = Estadistica.objects.all()
    niveles = Estadistica.objects.values_list('nivel', flat=True).distinct()

    if nivel:
        estadisticas = estadisticas.filter(nivel__icontains=nivel)

    # Ordena las estadísticas por el número de veces ganadas en orden descendente
    estadisticas = estadisticas.order_by('-veces_ganadas')

    # Calcula las estrellas para cada estadistica
    for estadistica in estadisticas:
        estadistica.estrellas = estadistica.veces_ganadas // 2
        if estadistica.veces_ganadas != 0:
            estadistica.promedio_aciertos = estadistica.cantidad_aciertos / \
                estadistica.veces_ganadas
        else:
            estadistica.promedio_aciertos = 0

    return render(request, 'hangman/ver_estadisticas.html', {'estadisticas': estadisticas, 'niveles': niveles, 'nivel_seleccionado': nivel})


def jugando(request):
    nombre = request.session.get('nombre')
    nivel = request.session.get('nivel')
    if not nombre or not nivel:
        return redirect('jugar')

    # Seleccionar palabras según el nivel
    palabras = Palabra.objects.filter(nivel=nivel)
    palabra_seleccionada = random.choice(palabras).palabra if palabras else ''

    # Guardar la palabra seleccionada en la sesión
    request.session['palabra'] = palabra_seleccionada
    request.session['errores'] = 0

    return render(request, 'hangman/jugando.html', {'nombre': nombre, 'nivel': nivel, 'palabra': palabra_seleccionada})


def ganaste(request):

    if request.method == 'POST':
        nombre = request.session.get('nombre')
        nivel = request.session.get('nivel')
        aciertos = int(request.POST.get('aciertos', 0))
        errores = int(request.POST.get('errores', 0))

        # actualiza o crea una nueva estadistica
        estadistica, created = Estadistica.objects.get_or_create(
            nombre=nombre, nivel=nivel)
        estadistica.veces_ganadas += 1
        estadistica.cantidad_aciertos += aciertos
        estadistica.cantidad_fallos += errores
        estadistica.save()

    return render(request, 'hangman/ganaste.html')


def perdiste(request):

    if request.method == 'POST':
        nombre = request.session.get('nombre')
        nivel = request.session.get('nivel')
        aciertos = int(request.POST.get('aciertos', 0))
        errores = int(request.POST.get('errores', 0))

        # Actualiza o crea una nueva estadística
        estadistica, created = Estadistica.objects.get_or_create(
            nombre=nombre, nivel=nivel)
        estadistica.veces_perdidas += 1
        estadistica.cantidad_aciertos += aciertos
        estadistica.cantidad_fallos += errores
        estadistica.save()

    return render(request, 'hangman/perdiste.html')
