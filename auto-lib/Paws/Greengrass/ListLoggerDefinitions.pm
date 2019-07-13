
package Paws::Greengrass::ListLoggerDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLoggerDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/loggers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::ListLoggerDefinitionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListLoggerDefinitions - Arguments for method ListLoggerDefinitions on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLoggerDefinitions on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method ListLoggerDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLoggerDefinitions.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $ListLoggerDefinitionsResponse = $greengrass->ListLoggerDefinitions(
      MaxResults => 'My__string',    # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Definitions = $ListLoggerDefinitionsResponse->Definitions;
    my $NextToken   = $ListLoggerDefinitionsResponse->NextToken;

    # Returns a L<Paws::Greengrass::ListLoggerDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListLoggerDefinitions>

=head1 ATTRIBUTES


=head2 MaxResults => Str

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLoggerDefinitions in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

