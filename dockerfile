# Usa una imagen base de Ruby
FROM ruby:3.1

# Instala dependencias necesarias
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Crea un directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . /app

# Instala las dependencias de Ruby (incluyendo savon)
RUN gem install savon

# Comando para ejecutar el script cuando el contenedor se inicie
CMD ["ruby", "soap_server.rb"]
