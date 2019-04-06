FROM nginx:latest
COPY ./code/index.html /usr/share/nginx/html/index.html
# RUN apt-get update\
#     && apt-get install wget -y\
#     && mkdir /etc/nginx/html\
#     && touch /etc/nginx/html/index.html\
#     && wget https://gist.githubusercontent.com/abelhbeyene/a050c040435c03fa15dfc06b9fa5461d/raw/c894596d07225285174a52de01a9e3760ed7271f/AWS%2520test%2520file -O /usr/share/nginx/html/index.html