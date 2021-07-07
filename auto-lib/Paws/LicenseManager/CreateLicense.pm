
package Paws::LicenseManager::CreateLicense;
  use Moose;
  has Beneficiary => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has ConsumptionConfiguration => (is => 'ro', isa => 'Paws::LicenseManager::ConsumptionConfiguration', required => 1);
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Entitlement]', required => 1);
  has HomeRegion => (is => 'ro', isa => 'Str', required => 1);
  has Issuer => (is => 'ro', isa => 'Paws::LicenseManager::Issuer', required => 1);
  has LicenseMetadata => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Metadata]');
  has LicenseName => (is => 'ro', isa => 'Str', required => 1);
  has ProductName => (is => 'ro', isa => 'Str', required => 1);
  has ProductSKU => (is => 'ro', isa => 'Str', required => 1);
  has Validity => (is => 'ro', isa => 'Paws::LicenseManager::DatetimeRange', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLicense');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CreateLicenseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicense - Arguments for method CreateLicense on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLicense on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CreateLicense.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLicense.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CreateLicenseResponse = $license -manager->CreateLicense(
      Beneficiary              => 'MyString',
      ClientToken              => 'MyClientToken',
      ConsumptionConfiguration => {
        BorrowConfiguration => {
          AllowEarlyCheckIn      => 1,
          MaxTimeToLiveInMinutes => 1,

        },    # OPTIONAL
        ProvisionalConfiguration => {
          MaxTimeToLiveInMinutes => 1,

        },    # OPTIONAL
        RenewType => 'None',    # values: None, Weekly, Monthly; OPTIONAL
      },
      Entitlements => [
        {
          Name => 'MyString',
          Unit => 'Count'
          , # values: Count, None, Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second
          AllowCheckIn => 1,
          MaxCount     => 1,            # OPTIONAL
          Overage      => 1,
          Value        => 'MyString',
        },
        ...
      ],
      HomeRegion => 'MyString',
      Issuer     => {
        Name    => 'MyString',
        SignKey => 'MyString',
      },
      LicenseName => 'MyString',
      ProductName => 'MyString',
      ProductSKU  => 'MyString',
      Validity    => {
        Begin => 'MyISO8601DateTime',    # max: 50
        End   => 'MyISO8601DateTime',    # max: 50
      },
      LicenseMetadata => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LicenseArn = $CreateLicenseResponse->LicenseArn;
    my $Status     = $CreateLicenseResponse->Status;
    my $Version    = $CreateLicenseResponse->Version;

    # Returns a L<Paws::LicenseManager::CreateLicenseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateLicense>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Beneficiary => Str

License beneficiary.



=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ConsumptionConfiguration => L<Paws::LicenseManager::ConsumptionConfiguration>

Configuration for consumption of the license. Choose a provisional
configuration for workloads running with continuous connectivity.
Choose a borrow configuration for workloads with offline usage.



=head2 B<REQUIRED> Entitlements => ArrayRef[L<Paws::LicenseManager::Entitlement>]

License entitlements.



=head2 B<REQUIRED> HomeRegion => Str

Home Region for the license.



=head2 B<REQUIRED> Issuer => L<Paws::LicenseManager::Issuer>

License issuer.



=head2 LicenseMetadata => ArrayRef[L<Paws::LicenseManager::Metadata>]

Information about the license.



=head2 B<REQUIRED> LicenseName => Str

License name.



=head2 B<REQUIRED> ProductName => Str

Product name.



=head2 B<REQUIRED> ProductSKU => Str

Product SKU.



=head2 B<REQUIRED> Validity => L<Paws::LicenseManager::DatetimeRange>

Date and time range during which the license is valid, in ISO8601-UTC
format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLicense in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

