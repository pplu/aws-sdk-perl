
package Paws::WorkMail::GetAccessControlEffectResponse;
  use Moose;
  has Effect => (is => 'ro', isa => 'Str');
  has MatchedRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetAccessControlEffectResponse

=head1 ATTRIBUTES


=head2 Effect => Str

The rule effect.

Valid values are: C<"ALLOW">, C<"DENY">
=head2 MatchedRules => ArrayRef[Str|Undef]

The rules that match the given parameters, resulting in an effect.


=head2 _request_id => Str


=cut

1;