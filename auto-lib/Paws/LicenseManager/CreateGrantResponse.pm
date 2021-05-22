
package Paws::LicenseManager::CreateGrantResponse;
  use Moose;
  has GrantArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateGrantResponse

=head1 ATTRIBUTES


=head2 GrantArn => Str

Grant ARN.


=head2 Status => Str

Grant status.

Valid values are: C<"PENDING_WORKFLOW">, C<"PENDING_ACCEPT">, C<"REJECTED">, C<"ACTIVE">, C<"FAILED_WORKFLOW">, C<"DELETED">, C<"PENDING_DELETE">, C<"DISABLED">
=head2 Version => Str

Grant version.


=head2 _request_id => Str


=cut

1;