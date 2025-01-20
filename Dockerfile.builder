# FROM node:16 as builder

# WORKDIR /build
# COPY ./web .
# COPY ./VERSION .
# RUN npm install
# RUN REACT_APP_VERSION=$(cat VERSION) npm run build

# FROM golang AS builder2

# ENV GO111MODULE=on \
#     CGO_ENABLED=1 \
#     GOOS=linux

# WORKDIR /build
# COPY . .
# COPY --from=builder /build/build ./web/build
# RUN go mod download
# RUN go build -ldflags "-s -w -X 'message-pusher/common.Version=$(cat VERSION)' -extldflags '-static'" -o message-pusher
FROM 117503445/dev-coding
