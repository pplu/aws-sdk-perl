
package Paws::Chime::GetSipRuleResponse;
  use Moose;
  has SipRule => (is => 'ro', isa => 'Paws::Chime::SipRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetSipRuleResponse

=head1 ATTRIBUTES


=head2 SipRule => L<Paws::Chime::SipRule>

The SIP rule details.


=head2 _request_id => Str


=cut

