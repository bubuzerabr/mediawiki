 <h2>Minha mediawiki</h2>

acesse [minhamediawiki](http://52.67.8.223:8088)


Nesse topico, irei explicar o que utilizei para subir a infraestrura do sistema do Mediawiki 


<h1>Ferramentas que foi utilizada</h1>

- Terraform
- Aws 
- Ansible
- Docker
- systemd
- Prometheus
- blackbox-exporter
- mysql
- grafana 

<h1>Explicação de como subi o sistema do mediawiki</h1>

- 1 - Primeiro, identificamos os pré requisitos para podermos instalar o mediawiki no site [Mediawiki](https://www.mediawiki.org/wiki/Manual:Installation_guide) .
- 2 - Usamos o terraform como automação para realizar o deploy das das instancias .
- 3 - Como cloud provider, utilizamos a Aws, instancias EC2, Loadbalance, security group 
- 4 - Como automação para prepara nossa aplicação, utilizamos o playbook do Ansible. 
- 5 - As aplicações estão sendo entregue com o Docker e gerenciado com o systemd para persistencia de dados 
- 6 - como bando de dados utilizamos o Mysql 
- 7 - para monitoração, utilizamos o Prometheus e blackbox-exporter para gerar as nossas metricas e o grafana para mostar graficamente as nossas metricas .



links das aplicações rodando 

- [minhamediawiki](http://52.67.8.223:8080)
- [prometheus](http://52.67.8.223:9090)
- [blackbox-exporter](http://52.67.8.223:9115)
- [grafana](http://52.67.8.223:3000/d/bdonida/mediawiki?orgId=1&refresh=10s&from=1642719139472&to=1642722739472)
