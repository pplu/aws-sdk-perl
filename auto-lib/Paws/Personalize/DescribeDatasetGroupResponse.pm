
package Paws::Personalize::DescribeDatasetGroupResponse;
  use Moose;
  has DatasetGroup => (is => 'ro', isa => 'Paws::Personalize::DatasetGroup', traits => ['NameInRequest'], request_name => 'datasetGroup' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetGroupResponse

=head1 ATTRIBUTES


=head2 DatasetGroup => L<Paws::Personalize::DatasetGroup>

A listing of the dataset group's properties.


=head2 _request_id => Str


=cut

1;