# README

This is a docker installation of KerkoApp based on the instructions found here:
[Getting Started - Kerko](https://whiskyechobravo.github.io/kerko/1.0/getting-started/#docker-installation)

## Commands:
Before running any of the commands below, you'll first need to change to the directory for kerkoapp:
```
cd /root/kerkoapp
```

Start up Kerko:
```
make run
```

Stop Kerko:
```
make stop
```

Run a sync:
```
make sync
```

Open a shell inside the Kerko container
```
make shell
```

Look at logs
```
make logs
```

Update to the latest version:
```
make update
```