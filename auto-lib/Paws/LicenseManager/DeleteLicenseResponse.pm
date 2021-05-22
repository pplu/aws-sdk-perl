
package Paws::LicenseManager::DeleteLicenseResponse;
  use Moose;
  has DeletionDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::DeleteLicenseResponse

=head1 ATTRIBUTES


=head2 DeletionDate => Str

Date on which the license is deleted.


=head2 Status => Str

License status.

Valid values are: C<"PENDING_DELETE">, C<"DELETED">
=head2 _request_id => Str


=cut

1;