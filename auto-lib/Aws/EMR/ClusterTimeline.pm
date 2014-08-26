package Aws::EMR::ClusterTimeline {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
}
1
