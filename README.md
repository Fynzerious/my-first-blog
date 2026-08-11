## Como correr o projeto

### Opção 1: Com Docker (recomendado)
1. Instala o Docker Desktop: https://www.docker.com/products/docker-desktop/
2. Na raiz do projeto, corre: `docker compose up`
3. Acede a http://localhost:8000

### Opção 2: Sem Docker
1. Cria um ambiente virtual: `python -m venv venv`
2. Ativa-o: `venv\Scripts\activate` (Windows) ou `source venv/bin/activate` (Linux/Mac)
3. Instala as dependências: `pip install -r requirements.txt`
4. Corre as migrations: `python manage.py migrate`
5. Arranca o servidor: `python manage.py runserver`
6. Acede a http://localhost:8000

## Para correr comando manage.py
docker compose exec web python manage.py 