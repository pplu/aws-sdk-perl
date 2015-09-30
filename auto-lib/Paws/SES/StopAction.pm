package Paws::SES::StopAction;
  use Moose;
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str');
1;
