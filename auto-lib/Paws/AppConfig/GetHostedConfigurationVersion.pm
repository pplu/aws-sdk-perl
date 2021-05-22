
package Paws::AppConfig::GetHostedConfigurationVersion;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationProfileId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'VersionNumber', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostedConfigurationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::HostedConfigurationVersion');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetHostedConfigurationVersion - Arguments for method GetHostedConfigurationVersion on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHostedConfigurationVersion on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetHostedConfigurationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHostedConfigurationVersion.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $HostedConfigurationVersion = $appconfig->GetHostedConfigurationVersion(
      ApplicationId          => 'MyId',
      ConfigurationProfileId => 'MyId',
      VersionNumber          => 1,

    );

    # Results:
    my $ApplicationId = $HostedConfigurationVersion->ApplicationId;
    my $ConfigurationProfileId =
      $HostedConfigurationVersion->ConfigurationProfileId;
    my $Content       = $HostedConfigurationVersion->Content;
    my $ContentType   = $HostedConfigurationVersion->ContentType;
    my $Description   = $HostedConfigurationVersion->Description;
    my $VersionNumber = $HostedConfigurationVersion->VersionNumber;

    # Returns a L<Paws::AppConfig::HostedConfigurationVersion> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetHostedConfigurationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 B<REQUIRED> ConfigurationProfileId => Str

The configuration profile ID.



=head2 B<REQUIRED> VersionNumber => Int

The version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHostedConfigurationVersion in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

