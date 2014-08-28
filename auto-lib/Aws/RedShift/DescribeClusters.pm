
package Aws::RedShift::DescribeClusters {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DescribeClustersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClustersResult');
}
1;
  