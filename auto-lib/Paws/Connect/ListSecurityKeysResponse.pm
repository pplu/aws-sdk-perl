
package Paws::Connect::ListSecurityKeysResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SecurityKeys => (is => 'ro', isa => 'ArrayRef[Paws::Connect::SecurityKey]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListSecurityKeysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 SecurityKeys => ArrayRef[L<Paws::Connect::SecurityKey>]

The security keys.


=head2 _request_id => Str


=cut

