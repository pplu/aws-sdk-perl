
package Paws::AuditManager::UpdateControlResponse;
  use Moose;
  has Control => (is => 'ro', isa => 'Paws::AuditManager::Control', traits => ['NameInRequest'], request_name => 'control');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateControlResponse

=head1 ATTRIBUTES


=head2 Control => L<Paws::AuditManager::Control>

The name of the updated control set returned by the C<UpdateControl>
API.


=head2 _request_id => Str


=cut

