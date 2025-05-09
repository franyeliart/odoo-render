FROM odoo:16.0

LABEL maintainer="tucorreo@dominio.com"

# Copia el archivo de configuración
COPY ./odoo.conf /etc/odoo/odoo.conf

# Cambia el usuario a root
USER root

# Cambia los permisos del archivo de configuración
RUN chown odoo /etc/odoo/odoo.conf && chmod 640 /etc/odoo/odoo.conf

# Vuelve al usuario 'odoo' para continuar con el contenedor
USER odoo

# Expone el puerto por defecto
EXPOSE 8069

# Comando para iniciar
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
