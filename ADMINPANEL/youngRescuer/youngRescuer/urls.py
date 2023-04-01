from django.contrib import admin
from django.urls import path,include




urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/',include("api.urls")),
]

admin.site.index_title="Admin panel of Young Rescuer application"
admin.site.index_title="Monitoring System"
admin.site.site_title="Monitoring System"

