pipeline {

  agent { label 'azure' }

  parameters{
      string(defaultValue: 'Project name', name: 'Project', description: 'Create a project to spin up an azure IAAS instance', trim: true)
      choice(choices: ['Build', 'Teardown', 'Show'], description: 'Pick a action that you want to perform on your project', name: 'Action')
  }

  stages {

    stage('Checkout') {
      steps {
          checkout scm
      }  
    }

    stage('apply terraform') {
        steps {
            script {
                if (params.Action == "Build"){
                    sh """
                       pwd
                       ls -lrt
                       terraform get -update
                       terraform init -backend-config='conn_str=postgres://tf_user:jandrew28@192.168.2.213/terraform_backend?sslmode=disable'
                       terraform workspace new ${params.Project}
                       terraform workspace list
                       terraform workspace select ${params.Project}
                       terraform plan -var=\"project=${params.Project}\" -out myplan                    
                       terraform apply -input=false myplan
                       rm -f myplan
                    """    
                }
                else {
                    sh """
                       terraform workspace select ${params.Project}
                       terraform destroy -var=\"project=${params.Project}\" -auto-approve
                       terraform workspace select default
                       terraform workspace delete ${params.Project}  
                    """
                }
            }
        }
    }

  } 


}