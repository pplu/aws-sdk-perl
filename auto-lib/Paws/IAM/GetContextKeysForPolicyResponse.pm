
package Paws::IAM::GetContextKeysForPolicyResponse;
  use Moose;
  has ContextKeyNames => (is => 'ro', isa => 'ArrayRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetContextKeysForPolicyResponse

=head1 ATTRIBUTES

=head2 ContextKeyNames => ArrayRef[Str]

  

The list of context keys that are used in the C<Condition> elements of
the input policies.











=cut

