
package Paws::AppConfig::CreateHostedConfigurationVersion;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationProfileId', required => 1);
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Description');
  has LatestVersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Latest-Version-Number');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Content');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHostedConfigurationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::HostedConfigurationVersion');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::CreateHostedConfigurationVersion - Arguments for method CreateHostedConfigurationVersion on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHostedConfigurationVersion on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method CreateHostedConfigurationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHostedConfigurationVersion.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $HostedConfigurationVersion =
      $appconfig->CreateHostedConfigurationVersion(
      ApplicationId          => 'MyId',
      ConfigurationProfileId => 'MyId',
      Content                => 'BlobBlob',
      ContentType            => 'MyStringWithLengthBetween1And255',
      Description            => 'MyDescription',                      # OPTIONAL
      LatestVersionNumber    => 1,                                    # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/CreateHostedConfigurationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 B<REQUIRED> ConfigurationProfileId => Str

The configuration profile ID.



=head2 B<REQUIRED> Content => Str

The content of the configuration or the configuration data.



=head2 B<REQUIRED> ContentType => Str

A standard MIME type describing the format of the configuration
content. For more information, see Content-Type
(https://docs.aws.amazon.com/https:/www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).



=head2 Description => Str

A description of the configuration.



=head2 LatestVersionNumber => Int

An optional locking token used to prevent race conditions from
overwriting configuration updates when creating a new version. To
ensure your data is not overwritten when creating multiple hosted
configuration versions in rapid succession, specify the version of the
latest hosted configuration version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHostedConfigurationVersion in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

