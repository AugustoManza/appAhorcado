from django.db import models
from hangman.models import models


class MiModelo(models.Model):
    campo1 = models.CharField(max_length=100)
    campo2 = models.IntegerField()


class Palabra(models.Model):
    palabra = models.CharField(max_length=10)
    nivel = models.CharField(max_length=10, choices=[(
        'facil', 'Fácil'), ('normal', 'Normal'), ('dificil', 'Difícil')])

    class Meta:
        db_table = 'palabras'

    def __str__(self):
        return self.palabra


class Estadistica(models.Model):
    nombre = models.CharField(max_length=20)
    nivel = models.CharField(max_length=10)
    veces_ganadas = models.PositiveIntegerField(default=0)
    veces_perdidas = models.PositiveIntegerField(default=0)
    cantidad_aciertos = models.PositiveIntegerField(default=0)
    cantidad_fallos = models.PositiveIntegerField(default=0)

    class Meta:
        db_table = 'estadistica'

    def __str__(self) -> str:
        return f"{self.nombre} - {self.nivel}"
