
package Paws::WAF::CreateIPSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has IPSet => (is => 'ro', isa => 'Paws::WAF::IPSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateIPSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateIPSet> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.


=head2 IPSet => L<Paws::WAF::IPSet>

The IPSet returned in the C<CreateIPSet> response.


=head2 _request_id => Str


=cut

1;