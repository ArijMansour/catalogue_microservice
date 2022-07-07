FROM golang:1.18.3
#COPY . /go/src/github.com/ArijMansour/catalogue_microservice
COPY . /home/arij/projects/catalogue_microservice  
#WORKDIR /go/src/github.com/ArijMansour/catalogue_microservice
WORKDIR /home/arij/projects/catalogue_microservice
#RUN go get -u github.com/FiloSottile/gvt
#RUN gvt restore && \CGO_ENABLED=0 GOOS=linux 
#RUN go build -a -installsuffix cgo-o /app github.com/ArijMansour/catalogue_microservice/cmd/cataloguesvc
RUN go build -o /app main.go
CMD ["/app"]
EXPOSE 80
