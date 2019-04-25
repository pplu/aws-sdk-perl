
package Paws::LicenseManager::GetLicenseConfiguration;
  use Moose;
  has LicenseConfigurationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLicenseConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::GetLicenseConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetLicenseConfiguration - Arguments for method GetLicenseConfiguration on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLicenseConfiguration on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method GetLicenseConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLicenseConfiguration.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $GetLicenseConfigurationResponse =
      $license -manager->GetLicenseConfiguration(
      LicenseConfigurationArn => 'MyString',

      );

    # Results:
    my $ConsumedLicenseSummaryList =
      $GetLicenseConfigurationResponse->ConsumedLicenseSummaryList;
    my $ConsumedLicenses = $GetLicenseConfigurationResponse->ConsumedLicenses;
    my $Description      = $GetLicenseConfigurationResponse->Description;
    my $LicenseConfigurationArn =
      $GetLicenseConfigurationResponse->LicenseConfigurationArn;
    my $LicenseConfigurationId =
      $GetLicenseConfigurationResponse->LicenseConfigurationId;
    my $LicenseCount = $GetLicenseConfigurationResponse->LicenseCount;
    my $LicenseCountHardLimit =
      $GetLicenseConfigurationResponse->LicenseCountHardLimit;
    my $LicenseCountingType =
      $GetLicenseConfigurationResponse->LicenseCountingType;
    my $LicenseRules = $GetLicenseConfigurationResponse->LicenseRules;
    my $ManagedResourceSummaryList =
      $GetLicenseConfigurationResponse->ManagedResourceSummaryList;
    my $Name           = $GetLicenseConfigurationResponse->Name;
    my $OwnerAccountId = $GetLicenseConfigurationResponse->OwnerAccountId;
    my $Status         = $GetLicenseConfigurationResponse->Status;
    my $Tags           = $GetLicenseConfigurationResponse->Tags;

    # Returns a L<Paws::LicenseManager::GetLicenseConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/GetLicenseConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseConfigurationArn => Str

ARN of the license configuration being requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLicenseConfiguration in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

