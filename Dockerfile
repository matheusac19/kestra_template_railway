ARG IMAGE_TAG=latest
FROM kestra/kestra:${IMAGE_TAG}

# Se quiser adicionar plugins/custom jar, faz aqui (exemplo comentado)
# COPY build/libs/*.jar /app/plugins/

# Copiamos o application.yaml para dentro da imagem (opcional)
COPY application.yaml /etc/config/application.yaml

# Porta padrão do Kestra web
EXPOSE 8080

# Comando padrão: standalone usando o config
CMD ["server","standalone","--config","/etc/config/application.yaml"]
