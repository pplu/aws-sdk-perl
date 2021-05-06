
package Paws::Personalize::DescribeDatasetResponse;
  use Moose;
  has Dataset => (is => 'ro', isa => 'Paws::Personalize::Dataset', traits => ['NameInRequest'], request_name => 'dataset' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 Dataset => L<Paws::Personalize::Dataset>

A listing of the dataset's properties.


=head2 _request_id => Str


=cut

1;