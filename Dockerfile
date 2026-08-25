  FROM node:20 AS builder                                                                                                                                                                                
  WORKDIR /app                                                                                                                                                                                           
  RUN echo "build stage"                                                                                                                                                                                 
                                                                                                                                                                                                         
  FROM alpine:3.20                                                                                                                                                                                       
  COPY --from=builder /app /app                                                                                                                                                                          
  RUN echo "final stage"
