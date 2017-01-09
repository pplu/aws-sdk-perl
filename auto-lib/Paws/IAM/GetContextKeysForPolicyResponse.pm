
package Paws::IAM::GetContextKeysForPolicyResponse;
  use Moose;
  has ContextKeyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetContextKeysForPolicyResponse

=head1 ATTRIBUTES


=head2 ContextKeyNames => ArrayRef[Str|Undef]

The list of context keys that are referenced in the input policies.


=head2 _request_id => Str


=cut

