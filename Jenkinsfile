node {
    // init env vars
    env.HOST = "example.com"
    env.OK_STATUS_CODE = "200"
    
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
        ansible-playbook template.yml --extra-vars="env_name=${env.env_name}"
        '''
    }

    stage('validate_status') {
        sh '''
        echo "***********Validating Status***********"
        . ./request.sh
        '''
    }

    stage('send_notification') {
        echo "The status code is: ${env.ok_status_code}"
    }    

}