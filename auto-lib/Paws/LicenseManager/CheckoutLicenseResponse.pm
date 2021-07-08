
package Paws::LicenseManager::CheckoutLicenseResponse;
  use Moose;
  has CheckoutType => (is => 'ro', isa => 'Str');
  has EntitlementsAllowed => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::EntitlementData]');
  has Expiration => (is => 'ro', isa => 'Str');
  has IssuedAt => (is => 'ro', isa => 'Str');
  has LicenseConsumptionToken => (is => 'ro', isa => 'Str');
  has NodeId => (is => 'ro', isa => 'Str');
  has SignedToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CheckoutLicenseResponse

=head1 ATTRIBUTES


=head2 CheckoutType => Str

Checkout type.

Valid values are: C<"PROVISIONAL">
=head2 EntitlementsAllowed => ArrayRef[L<Paws::LicenseManager::EntitlementData>]

Allowed license entitlements.


=head2 Expiration => Str

Date and time at which the license checkout expires.


=head2 IssuedAt => Str

Date and time at which the license checkout is issued.


=head2 LicenseConsumptionToken => Str

License consumption token.


=head2 NodeId => Str

Node ID.


=head2 SignedToken => Str

Signed token.


=head2 _request_id => Str


=cut

1;