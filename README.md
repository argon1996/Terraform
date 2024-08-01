# Terraform Project

Este proyecto contiene configuraciones de Terraform para desplegar un clúster de Kubernetes (AKS) en Azure y otros recursos relacionados.

## Descripción

Este proyecto utiliza Terraform para automatizar la creación y gestión de infraestructura en Azure. Incluye la configuración para un grupo de recursos y un clúster de Kubernetes (AKS).

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalados los siguientes programas:

- [Terraform](https://www.terraform.io/downloads.html)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Git](https://git-scm.com/)
- [Git LFS](https://git-lfs.github.com/)

## Variables

Las siguientes variables deben configurarse en `variables.tf`:

- `resource_group_name`: Nombre del grupo de recursos.
- `location`: Región de Azure donde se desplegarán los recursos.
- `aks_cluster_name`: Nombre del clúster AKS.
- `dns_prefix`: Prefijo DNS para el clúster AKS.
- `node_count`: Número de nodos en el pool de nodos por defecto.
- `vm_size`: Tamaño de las máquinas virtuales.

## Instalación

1. Clona este repositorio en tu máquina local:

    ```bash
    git clone https://github.com/argon1996/Terraform.git
    cd Terraform
    ```

2. Inicializa Terraform:

    ```bash
    terraform init
    ```

## Uso

1. Revisa y ajusta las variables en `variables.tf` según tus necesidades.

2. Genera un plan de ejecución para revisar los cambios que se aplicarán:

    ```bash
    terraform plan
    ```

3. Aplica el plan para crear la infraestructura:

    ```bash
    terraform apply
    ```

4. Ingresa `yes` cuando se te pida confirmar la ejecución.

## Despliegue en AKS

Después de que la infraestructura esté desplegada, puedes obtener las credenciales para interactuar con el clúster AKS usando:

```bash
az aks get-credentials --resource-group <resource_group_name> --name <aks_cluster_name>
