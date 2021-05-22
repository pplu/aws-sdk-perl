
package Paws::LicenseManager::CheckoutLicense;
  use Moose;
  has Beneficiary => (is => 'ro', isa => 'Str');
  has CheckoutType => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::EntitlementData]', required => 1);
  has KeyFingerprint => (is => 'ro', isa => 'Str', required => 1);
  has NodeId => (is => 'ro', isa => 'Str');
  has ProductSKU => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckoutLicense');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CheckoutLicenseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CheckoutLicense - Arguments for method CheckoutLicense on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckoutLicense on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CheckoutLicense.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckoutLicense.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CheckoutLicenseResponse = $license -manager->CheckoutLicense(
      CheckoutType => 'PROVISIONAL',
      ClientToken  => 'MyClientToken',
      Entitlements => [
        {
          Name => 'MyString',
          Unit => 'Count'
          , # values: Count, None, Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second
          Value => 'MyString',
        },
        ...
      ],
      KeyFingerprint => 'MyString',
      ProductSKU     => 'MyString',
      Beneficiary    => 'MyString',    # OPTIONAL
      NodeId         => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CheckoutType        = $CheckoutLicenseResponse->CheckoutType;
    my $EntitlementsAllowed = $CheckoutLicenseResponse->EntitlementsAllowed;
    my $Expiration          = $CheckoutLicenseResponse->Expiration;
    my $IssuedAt            = $CheckoutLicenseResponse->IssuedAt;
    my $LicenseConsumptionToken =
      $CheckoutLicenseResponse->LicenseConsumptionToken;
    my $NodeId      = $CheckoutLicenseResponse->NodeId;
    my $SignedToken = $CheckoutLicenseResponse->SignedToken;

    # Returns a L<Paws::LicenseManager::CheckoutLicenseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CheckoutLicense>

=head1 ATTRIBUTES


=head2 Beneficiary => Str

License beneficiary.



=head2 B<REQUIRED> CheckoutType => Str

Checkout type.

Valid values are: C<"PROVISIONAL">

=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Entitlements => ArrayRef[L<Paws::LicenseManager::EntitlementData>]

License entitlements.



=head2 B<REQUIRED> KeyFingerprint => Str

Key fingerprint identifying the license.



=head2 NodeId => Str

Node ID.



=head2 B<REQUIRED> ProductSKU => Str

Product SKU.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckoutLicense in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

