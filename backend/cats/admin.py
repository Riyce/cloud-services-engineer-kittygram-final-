from django.contrib import admin

from .models import Achievement, AchievementCat, Cat


@admin.register(Cat)
class CatAdmin(admin.ModelAdmin):
    pass


@admin.register(Achievement)
class AchievementAdmin(admin.ModelAdmin):
    pass


@admin.register(AchievementCat)
class AchievementCatAdmin(admin.ModelAdmin):
    pass
