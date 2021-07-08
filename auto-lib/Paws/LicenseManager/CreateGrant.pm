
package Paws::LicenseManager::CreateGrant;
  use Moose;
  has AllowedOperations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GrantName => (is => 'ro', isa => 'Str', required => 1);
  has HomeRegion => (is => 'ro', isa => 'Str', required => 1);
  has LicenseArn => (is => 'ro', isa => 'Str', required => 1);
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CreateGrantResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateGrant - Arguments for method CreateGrant on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGrant on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CreateGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGrant.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CreateGrantResponse = $license -manager->CreateGrant(
      AllowedOperations => [
        'CreateGrant',
        ... # values: CreateGrant, CheckoutLicense, CheckoutBorrowLicense, CheckInLicense, ExtendConsumptionLicense, ListPurchasedLicenses, CreateToken
      ],
      ClientToken => 'MyClientToken',
      GrantName   => 'MyString',
      HomeRegion  => 'MyString',
      LicenseArn  => 'MyArn',
      Principals  => [
        'MyArn', ...    # max: 2048
      ],

    );

    # Results:
    my $GrantArn = $CreateGrantResponse->GrantArn;
    my $Status   = $CreateGrantResponse->Status;
    my $Version  = $CreateGrantResponse->Version;

    # Returns a L<Paws::LicenseManager::CreateGrantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowedOperations => ArrayRef[Str|Undef]

Allowed operations for the grant.



=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> GrantName => Str

Grant name.



=head2 B<REQUIRED> HomeRegion => Str

Home Region of the grant.



=head2 B<REQUIRED> LicenseArn => Str

Amazon Resource Name (ARN) of the license.



=head2 B<REQUIRED> Principals => ArrayRef[Str|Undef]

The grant principals.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGrant in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

