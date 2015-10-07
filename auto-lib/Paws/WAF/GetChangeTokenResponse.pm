
package Paws::WAF::GetChangeTokenResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetChangeTokenResponse

=head1 ATTRIBUTES

=head2 ChangeToken => Str

  

The C<ChangeToken> that you used in the request. Use this value in a
C<GetChangeTokenStatus> request to get the current status of the
request.











=cut

1;