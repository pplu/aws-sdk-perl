
package Paws::LicenseManager::ListAssociationsForLicenseConfiguration;
  use Moose;
  has LicenseConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociationsForLicenseConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListAssociationsForLicenseConfiguration - Arguments for method ListAssociationsForLicenseConfiguration on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociationsForLicenseConfiguration on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method ListAssociationsForLicenseConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociationsForLicenseConfiguration.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $ListAssociationsForLicenseConfigurationResponse =
      $license -manager->ListAssociationsForLicenseConfiguration(
      LicenseConfigurationArn => 'MyString',
      MaxResults              => 1,             # OPTIONAL
      NextToken               => 'MyString',    # OPTIONAL
      );

    # Results:
    my $LicenseConfigurationAssociations =
      $ListAssociationsForLicenseConfigurationResponse
      ->LicenseConfigurationAssociations;
    my $NextToken = $ListAssociationsForLicenseConfigurationResponse->NextToken;

# Returns a L<Paws::LicenseManager::ListAssociationsForLicenseConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/ListAssociationsForLicenseConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseConfigurationArn => Str

ARN of a C<LicenseConfiguration> object.



=head2 MaxResults => Int

Maximum number of results to return in a single call. To retrieve the
remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

Token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociationsForLicenseConfiguration in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

