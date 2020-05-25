# Put sharing direcotry
PWD=`pwd`/tf/example
TERRAFORM_VERSION=0.12.5

# Befere run this command, you have to put environment parameter.
# terraform='docker run --rm -it  -v $PWD:/work  -w /work  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY  -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION hashicorp/terraform:0.12.5'

docker run --rm -it \
  -v $PWD:/work \
  -w /work \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
  hashicorp/terraform:$TERRAFORM_VERSION $1
