# Avalara

## Infrastructure

I'm using Terraform K8S resources to create deployment, services and ingress.

For Canary deployment, I'm using a labels and selectors to define which deployment is the canary or the primary

This solution also has a Redis to cache the full URL that will be shortened.

## Application

The GO application has 2 methods:

- ReduceURL: receive full-url and send shortcode
- RedirectURL: receive shortcode and redirect to full-url

First I build a docker image (see Dokerfile) with latest version and send it to Docker repo.

To deploy this image to K8S, just run deployment
