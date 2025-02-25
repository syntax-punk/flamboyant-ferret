# Flamboyant Ferret

### A React + TypeScript + Vite app used for docker image for development and testing purposes.

#### Good to know
- Docker image `monollect/flamboyant-ferret` is based on latest `node`
- To build image run `npm run d:build`
- To run the image with docker compose run `docker compose up`
  - Run `docker compose down` to stop it
- The app spins a dev environment with `npm start` and is served on port 3000
- Have a K8S cluster running? 
  - Run `kubectl apply -f deployment.yml` to deploy the app
- Want to expose the app?
  - Run `kubectl get pods` find the pod name
  - Run `kubectl port-forward pod/<pod-name> 3000:3000` to expose the app on port 3000


this is now serious stuff