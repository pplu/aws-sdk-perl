package Aws::SNS::Topic {
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str');
}
1;
