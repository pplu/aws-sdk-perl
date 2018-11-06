
package Paws::Greengrass::GetLoggerDefinitionVersion;
  use Moose;
  has LoggerDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LoggerDefinitionId', required => 1);
  has LoggerDefinitionVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LoggerDefinitionVersionId', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoggerDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetLoggerDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetLoggerDefinitionVersion - Arguments for method GetLoggerDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLoggerDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetLoggerDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLoggerDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetLoggerDefinitionVersionResponse =
      $greengrass->GetLoggerDefinitionVersion(
      LoggerDefinitionId        => 'My__string',
      LoggerDefinitionVersionId => 'My__string',
      NextToken                 => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Arn = $GetLoggerDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $GetLoggerDefinitionVersionResponse->CreationTimestamp;
    my $Definition = $GetLoggerDefinitionVersionResponse->Definition;
    my $Id         = $GetLoggerDefinitionVersionResponse->Id;
    my $Version    = $GetLoggerDefinitionVersionResponse->Version;

    # Returns a L<Paws::Greengrass::GetLoggerDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetLoggerDefinitionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggerDefinitionId => Str

The ID of the logger definition.



=head2 B<REQUIRED> LoggerDefinitionVersionId => Str

The ID of the logger definition version.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLoggerDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

