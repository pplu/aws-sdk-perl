package Paws::IoT::SqsAction;
  use Moose;
  has queueUrl => (is => 'ro', isa => 'Str', required => 1);
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
  has useBase64 => (is => 'ro', isa => 'Bool');
1;
