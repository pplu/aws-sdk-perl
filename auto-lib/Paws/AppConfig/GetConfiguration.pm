
package Paws::AppConfig::GetConfiguration;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Application', required => 1);
  has ClientConfigurationVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'client_configuration_version');
  has ClientId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'client_id', required => 1);
  has Configuration => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Configuration', required => 1);
  has Environment => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Environment', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{Application}/environments/{Environment}/configurations/{Configuration}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Configuration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetConfiguration - Arguments for method GetConfiguration on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguration on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguration.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Configuration = $appconfig->GetConfiguration(
      Application                => 'MyStringWithLengthBetween1And64',
      ClientId                   => 'MyStringWithLengthBetween1And64',
      Configuration              => 'MyStringWithLengthBetween1And64',
      Environment                => 'MyStringWithLengthBetween1And64',
      ClientConfigurationVersion => 'MyVersion',                      # OPTIONAL
    );

    # Results:
    my $ConfigurationVersion = $Configuration->ConfigurationVersion;
    my $Content              = $Configuration->Content;
    my $ContentType          = $Configuration->ContentType;

    # Returns a L<Paws::AppConfig::Configuration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application to get.



=head2 ClientConfigurationVersion => Str

The configuration version returned in the most recent GetConfiguration
response.



=head2 B<REQUIRED> ClientId => Str

A unique ID to identify the client for the configuration. This ID
enables AppConfig to deploy the configuration in intervals, as defined
in the deployment strategy.



=head2 B<REQUIRED> Configuration => Str

The configuration to get.



=head2 B<REQUIRED> Environment => Str

The environment to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguration in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

