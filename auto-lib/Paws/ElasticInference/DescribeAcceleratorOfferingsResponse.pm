
package Paws::ElasticInference::DescribeAcceleratorOfferingsResponse;
  use Moose;
  has AcceleratorTypeOfferings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticInference::AcceleratorTypeOffering]', traits => ['NameInRequest'], request_name => 'acceleratorTypeOfferings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference::DescribeAcceleratorOfferingsResponse

=head1 ATTRIBUTES


=head2 AcceleratorTypeOfferings => ArrayRef[L<Paws::ElasticInference::AcceleratorTypeOffering>]

The list of accelerator type offerings for a specific location.


=head2 _request_id => Str


=cut

