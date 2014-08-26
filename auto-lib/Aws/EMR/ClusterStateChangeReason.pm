package Aws::EMR::ClusterStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}
1
