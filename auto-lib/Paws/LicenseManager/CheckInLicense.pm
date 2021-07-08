
package Paws::LicenseManager::CheckInLicense;
  use Moose;
  has Beneficiary => (is => 'ro', isa => 'Str');
  has LicenseConsumptionToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckInLicense');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CheckInLicenseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CheckInLicense - Arguments for method CheckInLicense on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckInLicense on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CheckInLicense.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckInLicense.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CheckInLicenseResponse = $license -manager->CheckInLicense(
      LicenseConsumptionToken => 'MyString',
      Beneficiary             => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CheckInLicense>

=head1 ATTRIBUTES


=head2 Beneficiary => Str

License beneficiary.



=head2 B<REQUIRED> LicenseConsumptionToken => Str

License consumption token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckInLicense in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

