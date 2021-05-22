
package Paws::Schemas::GetResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The resource-based policy.


=head2 RevisionId => Str

The revision ID.


=head2 _request_id => Str


=cut

