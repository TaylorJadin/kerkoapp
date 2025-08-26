run:
        docker-compose up -d

start:
        docker-compose up -d

stop:
        docker-compose down
    
sync:
        docker-compose exec kerkoapp flask kerko sync

clean:
        docker-compose exec kerkoapp flask kerko clean everything

shell:
        docker-compose exec kerkoapp bash

logs:
        docker-compose logs -f

update:
        docker-compose pull && docker-compose down && docker-compose up -d
