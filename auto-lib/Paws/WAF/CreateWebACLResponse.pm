
package Paws::WAF::CreateWebACLResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has WebACL => (is => 'ro', isa => 'Paws::WAF::WebACL');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateWebACLResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

  The C<ChangeToken> that you used to submit the C<CreateWebACL> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.

=head2 WebACL => L<Paws::WAF::WebACL>

  The WebACL returned in the C<CreateWebACL> response.


=cut

1;