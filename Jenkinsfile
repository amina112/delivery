pipeline
{
 agent any
 stages {
 stage('build'){
 steps{
 script{
 sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/hosts.yml"
 }
 }
 
 }
 stage('docker')
 {
 steps{
 script{
 sh " ansible-playbook  /var/lib/jenkins/workspace/cd/Ansible/docker.yml -i Ansible/inventory/hosts.yml "
 }
 }
 }
 stage('Docker login') {

                                         steps {
                                          sh 'echo "login Docker ...."'
                   	sh "docker login -u amina112 -p 181Jft3007"
                               }  }
 stage('docker registry')
 {
 steps{
 script{
 sh " ansible-playbook  -vvvv /var/lib/jenkins/workspace/cd/Ansible/docker-registry.yml -i Ansible/inventory/hosts.yml "
 }
 }
 }
 }
 }
