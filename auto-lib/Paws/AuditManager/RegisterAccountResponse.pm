
package Paws::AuditManager::RegisterAccountResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::RegisterAccountResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the account registration request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">, C<"PENDING_ACTIVATION">
=head2 _request_id => Str


=cut

