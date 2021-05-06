
package Paws::Lambda::AddLayerVersionPermissionResponse;
  use Moose;
  has RevisionId => (is => 'ro', isa => 'Str');
  has Statement => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AddLayerVersionPermissionResponse

=head1 ATTRIBUTES


=head2 RevisionId => Str

A unique identifier for the current revision of the policy.


=head2 Statement => Str

The permission statement.


=head2 _request_id => Str


=cut

