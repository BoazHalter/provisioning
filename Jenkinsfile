  pipeline 
{
	
  agent none 
  environment {
	 AZURE_IP = '137.117.108.102'
         AZURE_AD_USER = 'root'	
	 AZURE_PASSWORD = 'cueryuc1!cueryuc1!'
	}	
   
  stages 
  { 
	stage('Run Compiler') 
	{ 
           agent { dockerfile true }	
	
	stages 
	{
	   stage('Build')
	   {
	      steps
	      {
	         sh 'printenv'
	         input ''
		  sh 'ansible-playbook -i inventory.yaml play.yaml -vvv'    
	      }
	   }
	   stage('Test') 
	   {		  
              steps
	      {
                 sh 'echo mvn test'
              }
            }
        }	
        		
    }
  }
}
