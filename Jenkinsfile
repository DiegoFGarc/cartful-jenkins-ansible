node {
    // init env vars
    env.host = "example.com"
    env.ok_status_code = "200"
    
    stage('validate_parameters') {
        if (env.env_name =~ /^(ing|dev)$/) {
            echo "The env_name value is valid!: ${env.env_name}"
        } else {
            error("The env_name parameter value is invalid. Must be 'ing' or 'dev'.")
        }
    }

    stage('get_status') {
        echo "getting status..."
    }

    stage('validate_status') {
        echo "validating status..."
    }

    stage('send_notification') {
        echo "The status code is: ${env.ok_status_code}"
    }    

}