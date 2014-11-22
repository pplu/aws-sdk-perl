
package Paws::RedShift::RebootCluster {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::RebootClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RebootClusterResult');
}
1;