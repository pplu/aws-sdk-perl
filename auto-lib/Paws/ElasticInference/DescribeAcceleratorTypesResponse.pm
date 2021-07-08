
package Paws::ElasticInference::DescribeAcceleratorTypesResponse;
  use Moose;
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Paws::ElasticInference::AcceleratorType]', traits => ['NameInRequest'], request_name => 'acceleratorTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference::DescribeAcceleratorTypesResponse

=head1 ATTRIBUTES


=head2 AcceleratorTypes => ArrayRef[L<Paws::ElasticInference::AcceleratorType>]

The available accelerator types.


=head2 _request_id => Str


=cut

