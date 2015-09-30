package Paws::SES::LambdaAction;
  use Moose;
  has FunctionArn => (is => 'ro', isa => 'Str', required => 1);
  has InvocationType => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
1;
