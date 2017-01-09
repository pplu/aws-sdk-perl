
package Paws::Rekognition::ListCollectionsResponse;
  use Moose;
  has CollectionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListCollectionsResponse

=head1 ATTRIBUTES


=head2 CollectionIds => ArrayRef[Str|Undef]

An array of collection IDs.


=head2 NextToken => Str

If the result is truncated, the response provides a C<NextToken> that
you can use in the subsequent request to fetch the next set of
collection IDs.


=head2 _request_id => Str


=cut

1;