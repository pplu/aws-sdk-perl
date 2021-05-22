
package Paws::LicenseManager::CreateLicenseResponse;
  use Moose;
  has LicenseArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseResponse

=head1 ATTRIBUTES


=head2 LicenseArn => Str

Amazon Resource Name (ARN) of the license.


=head2 Status => Str

License status.

Valid values are: C<"AVAILABLE">, C<"PENDING_AVAILABLE">, C<"DEACTIVATED">, C<"SUSPENDED">, C<"EXPIRED">, C<"PENDING_DELETE">, C<"DELETED">
=head2 Version => Str

License version.


=head2 _request_id => Str


=cut

1;