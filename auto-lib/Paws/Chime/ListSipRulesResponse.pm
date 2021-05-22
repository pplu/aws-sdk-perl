
package Paws::Chime::ListSipRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SipRules => (is => 'ro', isa => 'ArrayRef[Paws::Chime::SipRule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListSipRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 SipRules => ArrayRef[L<Paws::Chime::SipRule>]

List of SIP rules and rule details.


=head2 _request_id => Str


=cut

