
package Paws::WorkMail::GetMobileDeviceAccessEffectResponse;
  use Moose;
  has Effect => (is => 'ro', isa => 'Str');
  has MatchedRules => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::MobileDeviceAccessMatchedRule]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetMobileDeviceAccessEffectResponse

=head1 ATTRIBUTES


=head2 Effect => Str

The effect of the simulated access, C<ALLOW> or C<DENY>, after
evaluating mobile device access rules in the Amazon WorkMail
organization for the simulated user parameters.

Valid values are: C<"ALLOW">, C<"DENY">
=head2 MatchedRules => ArrayRef[L<Paws::WorkMail::MobileDeviceAccessMatchedRule>]

A list of the rules which matched the simulated user input and produced
the effect.


=head2 _request_id => Str


=cut

1;