package Aws::RedShift::ElasticIpStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
