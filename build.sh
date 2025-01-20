cd web
npm install
npm run build
cd ..
go mod download
CGO_ENABLED=0 go build -ldflags "-s -w" -o message-pusher