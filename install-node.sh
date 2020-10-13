# use profile
cp /etc/skel/.bash* ~
# Install node
curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh -o install-nvm.sh
chmod 755 install-nvm.sh
./install-nvm.sh
chmod 755 ~/.nvm/nvm.sh
. ~/.nvm/nvm.sh
nvm install node
# Install aws cdk
npm install -g aws-cdk
cdk --version
# Install cdk packages
npm install @aws-cdk/aws-lambda @aws-cdk/aws-dynamodb @aws-cdk/aws-apigateway @aws-cdk/aws-ec2 @aws-cdk/aws-ecs @aws-cdk/aws-ecs-patterns @aws-cdk/aws-codedeploy @aws-cdk/aws-lambda @aws-cdk/aws-codebuild @aws-cdk/aws-codepipeline @aws-cdk/aws-codecommit @aws-cdk/aws-codepipeline-actions @aws-cdk/aws-s3