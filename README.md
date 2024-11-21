# Dockerized Haskell Project Template

## Clone, bootstrap and enjoy

```bash
git clone https://github.com/tilin94/dockerized-haskell
cd $_
bash bootstrap.sh

```

### How it works?
1. It ask you for the project name
2. clones the template files on a temporari dir
3. replaces the template content with your project name

### Nex steps
1. Add your extra dependencies in the .cabal file
2. Build the image: `docker-compose build`
3. Install dependencies and run tests: `docker-compose run --rm test`
