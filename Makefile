run:
	docker-compose up -d

stop:
	docker-compose down
    
sync:
	docker-compose exec kerkoapp flask kerko sync

shell:
	docker-compose exec kerkoapp bash

logs:
	docker-compose logs -f

update:
	docker-compose pull && docker-compose down && docker-compose up -d
