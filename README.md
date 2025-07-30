# README

This is a docker-compose based installation of KerkoApp based on the instructions found here:
[Getting Started - Kerko](https://whiskyechobravo.github.io/kerko/1.0/getting-started/#docker-installation)

Before starting up, fill in `SECRET_KEY` and `ZOTERO_API_KEY` in `instance/.secrets.toml` `ZOTERO_LIBRARY_ID` and `ZOTERO_LIBRARY_TYPE` in `instance/config.toml`

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

## Syncing content

`make sync` will run `flask kerko sync` in a shell inside the container, [which will do an incremental sync of the index, cache, and attachments from Zotero.](https://whiskyechobravo.github.io/kerko/latest/synchronization/#command-line-interface-cli)

There is also a `sync.sh` script in this repo to make it simple to schedule a recurring sync via the crontab like this:
```
@daily /root/kerkoapp/sync.sh > /root/kerkoapp/sync.log 2>&1
```
