
package Paws::Lambda::GetPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The resource-based policy.


=head2 RevisionId => Str

A unique identifier for the current revision of the policy.


=head2 _request_id => Str


=cut

