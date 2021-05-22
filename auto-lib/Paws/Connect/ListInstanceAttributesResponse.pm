
package Paws::Connect::ListInstanceAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Connect::Attribute]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListInstanceAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::Connect::Attribute>]

The attribute types.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

