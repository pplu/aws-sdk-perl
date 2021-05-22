
package Paws::Chime::CreateSipRuleResponse;
  use Moose;
  has SipRule => (is => 'ro', isa => 'Paws::Chime::SipRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateSipRuleResponse

=head1 ATTRIBUTES


=head2 SipRule => L<Paws::Chime::SipRule>

Returns the SIP rule information, including the rule ID, triggers, and
target applications.


=head2 _request_id => Str


=cut

