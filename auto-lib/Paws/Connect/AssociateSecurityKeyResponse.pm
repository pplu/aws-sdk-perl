
package Paws::Connect::AssociateSecurityKeyResponse;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssociateSecurityKeyResponse

=head1 ATTRIBUTES


=head2 AssociationId => Str

The existing association identifier that uniquely identifies the
resource type and storage config for the given instance ID.


=head2 _request_id => Str


=cut

