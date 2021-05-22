
package Paws::LicenseManager::ExtendLicenseConsumption;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has LicenseConsumptionToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExtendLicenseConsumption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::ExtendLicenseConsumptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ExtendLicenseConsumption - Arguments for method ExtendLicenseConsumption on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExtendLicenseConsumption on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method ExtendLicenseConsumption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExtendLicenseConsumption.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $ExtendLicenseConsumptionResponse =
      $license -manager->ExtendLicenseConsumption(
      LicenseConsumptionToken => 'MyString',
      DryRun                  => 1,            # OPTIONAL
      );

    # Results:
    my $Expiration = $ExtendLicenseConsumptionResponse->Expiration;
    my $LicenseConsumptionToken =
      $ExtendLicenseConsumptionResponse->LicenseConsumptionToken;

   # Returns a L<Paws::LicenseManager::ExtendLicenseConsumptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/ExtendLicenseConsumption>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request. Provides an error response if you
do not have the required permissions.



=head2 B<REQUIRED> LicenseConsumptionToken => Str

License consumption token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExtendLicenseConsumption in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

