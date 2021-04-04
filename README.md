# Proxy Server for WSL2 on Docker desktop for Windows when using VPN
### Biulding image
Run docker-compose build from your powershell console.
```
> docker-compose build
```
### Running
* Set your companies proxy setting to docker-compse.yaml.
```
    environment: 
      - PROXY_HOST=your_company_proxy_host
      - PROXY_PORT=8080
```

* Run docker container using docker-compose.
```
> docker-compose up -d
```

* Open your wsl2 console.

* Set up http proxy to the container.
```
$ export http_proxy=http://localhost:3128/
$ export https_proxy=http://localhost:3128/
$ export no_proxy=localhost, 127.0.0.1
```
