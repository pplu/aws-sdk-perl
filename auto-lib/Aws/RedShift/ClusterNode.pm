package Aws::RedShift::ClusterNode {
  use Moose;
  with ('AWS::API::ResultParser');
  has NodeRole => (is => 'ro', isa => 'Str');
  has PrivateIPAddress => (is => 'ro', isa => 'Str');
  has PublicIPAddress => (is => 'ro', isa => 'Str');
}
1
