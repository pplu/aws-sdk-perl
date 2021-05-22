
package Paws::LicenseManager::CreateGrantVersion;
  use Moose;
  has AllowedOperations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GrantArn => (is => 'ro', isa => 'Str', required => 1);
  has GrantName => (is => 'ro', isa => 'Str');
  has SourceVersion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGrantVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CreateGrantVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateGrantVersion - Arguments for method CreateGrantVersion on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGrantVersion on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CreateGrantVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGrantVersion.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CreateGrantVersionResponse = $license -manager->CreateGrantVersion(
      ClientToken       => 'MyString',
      GrantArn          => 'MyArn',
      AllowedOperations => [
        'CreateGrant',
        ... # values: CreateGrant, CheckoutLicense, CheckoutBorrowLicense, CheckInLicense, ExtendConsumptionLicense, ListPurchasedLicenses, CreateToken
      ],    # OPTIONAL
      GrantName     => 'MyString',            # OPTIONAL
      SourceVersion => 'MyString',            # OPTIONAL
      Status        => 'PENDING_WORKFLOW',    # OPTIONAL
    );

    # Results:
    my $GrantArn = $CreateGrantVersionResponse->GrantArn;
    my $Status   = $CreateGrantVersionResponse->Status;
    my $Version  = $CreateGrantVersionResponse->Version;

    # Returns a L<Paws::LicenseManager::CreateGrantVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateGrantVersion>

=head1 ATTRIBUTES


=head2 AllowedOperations => ArrayRef[Str|Undef]

Allowed operations for the grant.



=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> GrantArn => Str

Amazon Resource Name (ARN) of the grant.



=head2 GrantName => Str

Grant name.



=head2 SourceVersion => Str

Current version of the grant.



=head2 Status => Str

Grant status.

Valid values are: C<"PENDING_WORKFLOW">, C<"PENDING_ACCEPT">, C<"REJECTED">, C<"ACTIVE">, C<"FAILED_WORKFLOW">, C<"DELETED">, C<"PENDING_DELETE">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGrantVersion in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

