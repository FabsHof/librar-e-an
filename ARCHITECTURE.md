# Architecture

This project follows good SE-principles (e.g., SOLID) and a common four-layered architecture 
(as e.g., known from iOS-development).

## Layers

The architecture once again is described in (this article)[https://bloclibrary.dev/#/./architecture]. 
It comes with a small adaption to contain 4 layers. 

> Data Layer: This layer is the one in charge of interacting with APIs.
> Domain layer: This is the one in charge of transforming the data that comes from the data layer.
> Business logic layer: This layer manages the state.
> Presentation layer: Renders UI components based on state.