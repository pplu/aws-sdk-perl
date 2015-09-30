package Paws::SES::SNSAction;
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);
1;
