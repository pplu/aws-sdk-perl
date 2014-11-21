
package Aws::EMR::ListClusters {
  use Moose;
  has ClusterStates => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::ListClustersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;