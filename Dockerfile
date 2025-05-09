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
CMD ["odoo", "-d", "odoo_db_franye", "-i", "base", "--without-demo=all", "--db_user=odoo_db_franye_user", "--db_password=o4tQVk3jRRTAbeveyJJzTvLE23Zc1OaS", "--db_host=dpg-d0f3hapr0fns73cq90fg-a", "--db_port=5432"]

