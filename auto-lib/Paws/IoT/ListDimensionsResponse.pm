
package Paws::IoT::ListDimensionsResponse;
  use Moose;
  has DimensionNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dimensionNames');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListDimensionsResponse

=head1 ATTRIBUTES


=head2 DimensionNames => ArrayRef[Str|Undef]

A list of the names of the defined dimensions. Use C<DescribeDimension>
to get details for a dimension.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut

