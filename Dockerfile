FROM node:16.14.0

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY . /app

# install project dependencies
RUN npm install

#RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

EXPOSE 3000
CMD ["node", "app.js" ]