
package Paws::WAF::CreateIPSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has IPSet => (is => 'ro', isa => 'Paws::WAF::IPSet');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateIPSetResponse

=head1 ATTRIBUTES

=head2 ChangeToken => Str

  The C<ChangeToken> that you used to submit the C<CreateIPSet> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.
=head2 IPSet => Paws::WAF::IPSet

  The IPSet returned in the C<CreateIPSet> response.


=cut

1;