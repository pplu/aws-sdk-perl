
package Paws::LicenseManager::ListLicenseConfigurations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Filter]');
  has LicenseConfigurationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLicenseConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::ListLicenseConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenseConfigurations - Arguments for method ListLicenseConfigurations on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLicenseConfigurations on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method ListLicenseConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLicenseConfigurations.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $ListLicenseConfigurationsResponse =
      $license -manager->ListLicenseConfigurations(
      Filters => [
        {
          Name => 'MyFilterName',                # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      LicenseConfigurationArns => [ 'MyString', ... ],    # OPTIONAL
      MaxResults               => 1,                      # OPTIONAL
      NextToken                => 'MyString',             # OPTIONAL
      );

    # Results:
    my $LicenseConfigurations =
      $ListLicenseConfigurationsResponse->LicenseConfigurations;
    my $NextToken = $ListLicenseConfigurationsResponse->NextToken;

  # Returns a L<Paws::LicenseManager::ListLicenseConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/ListLicenseConfigurations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManager::Filter>]

One or more filters.



=head2 LicenseConfigurationArns => ArrayRef[Str|Undef]

An array of ARNs for the calling accountE<rsquo>s license
configurations.



=head2 MaxResults => Int

Maximum number of results to return in a single call. To retrieve the
remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

Token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLicenseConfigurations in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

