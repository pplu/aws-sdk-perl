
package Paws::ACMPCA::ListTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ACMPCA::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When the list is truncated, this value is present and should be used
for the B<NextToken> parameter in a subsequent pagination request.


=head2 Tags => ArrayRef[L<Paws::ACMPCA::Tag>]

The tags associated with your private CA.


=head2 _request_id => Str


=cut

1;