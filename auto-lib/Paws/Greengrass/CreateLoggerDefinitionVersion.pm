
package Paws::Greengrass::CreateLoggerDefinitionVersion;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Logger/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has LoggerDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Loggers => (is => 'ro', isa => ArrayRef[Greengrass_Logger], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateLoggerDefinitionVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/loggers/{LoggerDefinitionId}/versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateLoggerDefinitionVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoggerDefinitionId' => {
                                         'type' => 'Str'
                                       },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    },
               'Loggers' => {
                              'class' => 'Paws::Greengrass::Logger',
                              'type' => 'ArrayRef[Greengrass_Logger]'
                            }
             },
  'ParamInURI' => {
                    'LoggerDefinitionId' => 'LoggerDefinitionId'
                  },
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'IsRequired' => {
                    'LoggerDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateLoggerDefinitionVersion - Arguments for method CreateLoggerDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoggerDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateLoggerDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoggerDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateLoggerDefinitionVersionResponse =
      $greengrass->CreateLoggerDefinitionVersion(
      LoggerDefinitionId => 'My__string',
      AmznClientToken    => 'My__string',    # OPTIONAL
      Loggers            => [
        {
          Component =>
            'GreengrassSystem',    # values: GreengrassSystem, Lambda; OPTIONAL
          Id => 'My__string',
          Level => 'DEBUG',  # values: DEBUG, INFO, WARN, ERROR, FATAL; OPTIONAL
          Space => 1,        # OPTIONAL
          Type => 'FileSystem',    # values: FileSystem, AWSCloudWatch; OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      );

    # Results:
    my $Arn = $CreateLoggerDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $CreateLoggerDefinitionVersionResponse->CreationTimestamp;
    my $Id      = $CreateLoggerDefinitionVersionResponse->Id;
    my $Version = $CreateLoggerDefinitionVersionResponse->Version;

  # Returns a L<Paws::Greengrass::CreateLoggerDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateLoggerDefinitionVersion>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> LoggerDefinitionId => Str

The ID of the logger definition.



=head2 Loggers => ArrayRef[Greengrass_Logger]

A list of loggers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoggerDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

