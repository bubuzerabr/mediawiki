 <h2>Minha Mediawiki</h2>

Acesse [minhamediawiki](http://52.67.8.223:8080/index.php/P%C3%A1gina_principal)


Nesse tópico, irei explicar o que utilizei para subir a infraestrura do sistema do Mediawiki. 


<h1>Ferramentas que foram utilizadas</h1>

- Terraform
- Aws 
- Ansible
- Docker
- systemd
- Prometheus
- Blackbox-exporter
- Mysql
- Grafana 

<h1>Explicação de como subi o sistema do mediawiki</h1>

- 1 - Primeiro, identificamos os pré requisitos para podermos instalar o mediawiki no site [Mediawiki](https://www.mediawiki.org/wiki/Manual:Installation_guide) .
- 2 - Usamos o terraform como automação para realizar o deploy das das instancias na aws.
- 3 - Como cloud provider, utilizamos a Aws, instancias EC2, Loadbalance, security group.
- 4 - Como automação para prepara nossa aplicação, utilizamos o playbook do Ansible. 
- 5 - As aplicações estão sendo entregue com o Docker e gerenciado com o systemd para persistência de dados.
- 6 - como bando de dados utilizamos o Mysql.
- 7 - para monitoração, utilizamos o Prometheus e blackbox-exporter para gerar as nossas métricas e o grafana para mostar graficamente as nossas métricas.



links das aplicações rodando 

- [minhamediawiki](http://15.228.225.203:8080/)
- [prometheus](http://15.228.225.203:9090/)
- [blackbox-exporter](http://15.228.225.203:9115/)
- [grafana](http://52.67.8.223:3000/d/bdonida/mediawiki?orgId=1&refresh=10s&from=1642719139472&to=1642722739472)
