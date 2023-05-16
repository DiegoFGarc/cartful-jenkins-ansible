node {
    
    stage('validate_parameters') {
        if (env.env_name.contains('ing') || env.env_name.contains('dev')) {
            echo "The env_name value is valid!: ${env.env_name}"
        } else {
            error("The env_name parameter value is invalid. Must be 'ing' or 'dev'.")
        }
    }

    stage('get_status') {
        sh '''
        echo "***********Getting Status***********"
        ansible-playbook template.yml --extra-vars="env_name=$env_name"
        '''
    }

    stage('validate_status') {
        sh '''
        echo "***********Validating Status***********"
        . ./request.sh
    '''
    }

    stage('send_notification') {
        echo "The variable env_name is: ${env.env_name}"
        echo "The status code is: $status_code"
    }    

}