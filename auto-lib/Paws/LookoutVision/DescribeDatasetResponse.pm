
package Paws::LookoutVision::DescribeDatasetResponse;
  use Moose;
  has DatasetDescription => (is => 'ro', isa => 'Paws::LookoutVision::DatasetDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetDescription => L<Paws::LookoutVision::DatasetDescription>

The description of the requested dataset.


=head2 _request_id => Str


=cut

