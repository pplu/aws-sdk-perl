
package Paws::Greengrass::CreateLoggerDefinition;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has InitialVersion => (is => 'ro', isa => 'Paws::Greengrass::LoggerDefinitionVersion');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoggerDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/loggers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateLoggerDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateLoggerDefinition - Arguments for method CreateLoggerDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoggerDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateLoggerDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoggerDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateLoggerDefinitionResponse = $greengrass->CreateLoggerDefinition(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        Loggers => [
          {
            Component =>
              'GreengrassSystem',   # values: GreengrassSystem, Lambda; OPTIONAL
            Id => 'My__string',
            Level =>
              'DEBUG',    # values: DEBUG, INFO, WARN, ERROR, FATAL; OPTIONAL
            Space => 1,            # OPTIONAL
            Type  => 'FileSystem', # values: FileSystem, AWSCloudWatch; OPTIONAL
          },
          ...
        ],                         # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateLoggerDefinitionResponse->Arn;
    my $CreationTimestamp = $CreateLoggerDefinitionResponse->CreationTimestamp;
    my $Id                = $CreateLoggerDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateLoggerDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $CreateLoggerDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $CreateLoggerDefinitionResponse->LatestVersionArn;
    my $Name             = $CreateLoggerDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::CreateLoggerDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateLoggerDefinition>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => L<Paws::Greengrass::LoggerDefinitionVersion>

Information about the initial version of the logger definition.



=head2 Name => Str

The name of the logger definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoggerDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

