# Automatizaci-n-de-despliegues-en-entornos-Cloud
Automatización de despliegues en entornos Cloud

Esta es la estructura de la práctica:

```console
├── README.md
├── ansible-practica
│   ├── 01-Initial-all-configuration.yaml
│   ├── 02-Initial-nfs-configuration.yaml
│   ├── 03-Initial-mw-configuration.yaml
│   ├── 04-Initial-master-configuration.yaml
│   ├── 05-Install-sdn.yaml
│   ├── 06-Install-ingress-controller.yaml
│   ├── 07-Initial-workers-configuration.yaml
│   ├── 08-Create-user-notadmin.yaml
│   ├── 09-Deploy-app.yaml
│   ├── code
│   │   ├── images
│   │   │   ├── Blogger.png
│   │   │   ├── blockcontent.png
│   │   │   ├── blockcontentbullets.png
│   │   │   ├── blockheader.png
│   │   │   ├── button.png
│   │   │   ├── footer.png
│   │   │   ├── footer_b.png
│   │   │   ├── footerbullets.png
│   │   │   ├── header-object.png
│   │   │   ├── header.jpg
│   │   │   ├── menuitem.png
│   │   │   ├── menuseparator.png
│   │   │   ├── nav.png
│   │   │   ├── page_gl.png
│   │   │   ├── postauthoricon.png
│   │   │   ├── postbullets.png
│   │   │   ├── postcommentsicon.png
│   │   │   ├── postdateicon.png
│   │   │   ├── postediticon.png
│   │   │   ├── postemailicon.png
│   │   │   ├── postmetadatafooter_bg.png
│   │   │   ├── postquote.png
│   │   │   ├── posttagicon.png
│   │   │   ├── preview.jpg
│   │   │   ├── rssicon.png
│   │   │   ├── sheet.png
│   │   │   ├── sheet_b.png
│   │   │   ├── sheet_t.png
│   │   │   ├── small-logo.png
│   │   │   ├── spacer.gif
│   │   │   ├── subitem.png
│   │   │   ├── vmenublockcontent.png
│   │   │   ├── vmenublockheader.png
│   │   │   ├── vmenuitem.png
│   │   │   └── vsubitem.png
│   │   ├── index.html
│   │   ├── jquery.js
│   │   ├── script.js
│   │   ├── style.css
│   │   ├── style.ie6.css
│   │   └── style.ie7.css
│   ├── deploy.sh
│   ├── group-vars
│   │   ├── command-kubadmin.txt
│   │   ├── firewall-rules-master.yaml
│   │   ├── firewall-service.yaml
│   │   ├── hosts.yaml
│   │   ├── user.yaml
│   │   └── vault-file.yaml
│   ├── hosts
│   ├── kubeadmin-key
│   ├── nginx
│   │   ├── nfs-pv.yaml
│   │   ├── nfs-pvc.yaml
│   │   └── nginx-deployment.yaml
│   ├── roles
│   │   ├── create-user
│   │   │   ├── tasks
│   │   │   │   ├── 01-create-user.yaml
│   │   │   │   └── main.yaml
│   │   │   └── templates
│   │   │       └── kubeadmin.j2
│   │   ├── deploy-app
│   │   │   └── tasks
│   │   │       ├── 01-deploy-app.yaml
│   │   │       └── main.yaml
│   │   ├── ingress-controller-configuration
│   │   │   └── tasks
│   │   │       ├── 01-install.yaml
│   │   │       └── main.yaml
│   │   ├── initial-configuration
│   │   │   └── tasks
│   │   │       ├── 01-update-system.yaml
│   │   │       ├── 02-configure-time.yaml
│   │   │       ├── 03-selinux.yaml
│   │   │       ├── 04-nfs-resources.yaml
│   │   │       └── main.yaml
│   │   ├── master-configuration
│   │   │   └── tasks
│   │   │       ├── 01-firewall-configuration.yaml
│   │   │       ├── 02-kubeadm.yaml
│   │   │       ├── 03-firewall-worker.yaml
│   │   │       ├── 04-init-kubeadm.yaml
│   │   │       ├── 05-start-using-cluster.yaml
│   │   │       └── main.yaml
│   │   ├── mw-configuration
│   │   │   ├── tasks
│   │   │   │   ├── 01-routes.yaml
│   │   │   │   ├── 02-firewall-configuration.yaml
│   │   │   │   ├── 03-install-cri-o.yaml
│   │   │   │   ├── 04-install-k8s.yaml
│   │   │   │   └── main.yaml
│   │   │   └── templates
│   │   │       ├── crio.j2
│   │   │       ├── k8s.j2
│   │   │       ├── kubernetes.j2
│   │   │       └── routes.j2
│   │   ├── nfs-configuration
│   │   │   ├── tasks
│   │   │   │   ├── 01-install-nfs.yaml
│   │   │   │   ├── 02-directory-nfs.yaml
│   │   │   │   ├── 03-firewall-port.yaml
│   │   │   │   └── main.yaml
│   │   │   └── templates
│   │   │       └── exports.j2
│   │   ├── sdn-configuration
│   │   │   └── tasks
│   │   │       ├── 01-sdn-azure.yaml
│   │   │       └── main.yaml
│   │   └── workers-configuration
│   │       └── tasks
│   │           ├── 01-firewall-configuration.yaml
│   │           ├── 02-kubeadm.yaml
│   │           └── main.yaml
│   └── secret-kubeadmin.yaml
└── terraform-practica
    ├── correccion-vars.tf
    ├── credentials.tf
    ├── main.tf
    ├── network.tf
    ├── security.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    ├── vars.tf
    └── vm.tf
```

## Terraform

+ Para desplegar la infraestructura de Azure lanzamos el siguiente comando dentro del repositorio de Terraform:


```console
terraform apply
```


## Ansible

+ Para la instalación del cluster de kubernetes y el despliegue de la aplicación en este ejecutamos desde el repositorio de Ansible:


```console
deploy.sh
```
