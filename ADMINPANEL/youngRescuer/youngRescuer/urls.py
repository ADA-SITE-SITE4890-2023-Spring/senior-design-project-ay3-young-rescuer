from django.contrib import admin
from django.urls import path,include
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)



urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include("api.urls")),
    # path('admin/register/', register_custom_admin_user, name='admin_register'),
]

admin.site.index_title="Admin panel of Young Rescuer application"
admin.site.index_title="Monitoring System"
admin.site.site_title="Monitoring System"

urlpatterns += [
    path('login/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
]