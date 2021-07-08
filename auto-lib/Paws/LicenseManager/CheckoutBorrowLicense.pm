
package Paws::LicenseManager::CheckoutBorrowLicense;
  use Moose;
  has CheckoutMetadata => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Metadata]');
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DigitalSignatureMethod => (is => 'ro', isa => 'Str', required => 1);
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::EntitlementData]', required => 1);
  has LicenseArn => (is => 'ro', isa => 'Str', required => 1);
  has NodeId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckoutBorrowLicense');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CheckoutBorrowLicenseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CheckoutBorrowLicense - Arguments for method CheckoutBorrowLicense on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckoutBorrowLicense on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CheckoutBorrowLicense.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckoutBorrowLicense.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CheckoutBorrowLicenseResponse =
      $license -manager->CheckoutBorrowLicense(
      ClientToken            => 'MyClientToken',
      DigitalSignatureMethod => 'JWT_PS384',
      Entitlements           => [
        {
          Name => 'MyString',
          Unit => 'Count'
          , # values: Count, None, Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second
          Value => 'MyString',
        },
        ...
      ],
      LicenseArn       => 'MyArn',
      CheckoutMetadata => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      NodeId => 'MyString',    # OPTIONAL
      );

    # Results:
    my $CheckoutMetadata = $CheckoutBorrowLicenseResponse->CheckoutMetadata;
    my $EntitlementsAllowed =
      $CheckoutBorrowLicenseResponse->EntitlementsAllowed;
    my $Expiration = $CheckoutBorrowLicenseResponse->Expiration;
    my $IssuedAt   = $CheckoutBorrowLicenseResponse->IssuedAt;
    my $LicenseArn = $CheckoutBorrowLicenseResponse->LicenseArn;
    my $LicenseConsumptionToken =
      $CheckoutBorrowLicenseResponse->LicenseConsumptionToken;
    my $NodeId      = $CheckoutBorrowLicenseResponse->NodeId;
    my $SignedToken = $CheckoutBorrowLicenseResponse->SignedToken;

    # Returns a L<Paws::LicenseManager::CheckoutBorrowLicenseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CheckoutBorrowLicense>

=head1 ATTRIBUTES


=head2 CheckoutMetadata => ArrayRef[L<Paws::LicenseManager::Metadata>]

Information about constraints.



=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> DigitalSignatureMethod => Str

Digital signature method. The possible value is JSON Web Signature
(JWS) algorithm PS384. For more information, see RFC 7518 Digital
Signature with RSASSA-PSS
(https://tools.ietf.org/html/rfc7518#section-3.5).

Valid values are: C<"JWT_PS384">

=head2 B<REQUIRED> Entitlements => ArrayRef[L<Paws::LicenseManager::EntitlementData>]

License entitlements. Partial checkouts are not supported.



=head2 B<REQUIRED> LicenseArn => Str

Amazon Resource Name (ARN) of the license. The license must use the
borrow consumption configuration.



=head2 NodeId => Str

Node ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckoutBorrowLicense in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

