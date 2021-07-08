
package Paws::IoTWireless::ListWirelessGatewayTaskDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TaskDefinitionType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'taskDefinitionType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWirelessGatewayTaskDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-gateway-task-definitions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::ListWirelessGatewayTaskDefinitionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListWirelessGatewayTaskDefinitions - Arguments for method ListWirelessGatewayTaskDefinitions on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWirelessGatewayTaskDefinitions on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method ListWirelessGatewayTaskDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWirelessGatewayTaskDefinitions.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $ListWirelessGatewayTaskDefinitionsResponse =
      $api . iotwireless->ListWirelessGatewayTaskDefinitions(
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      TaskDefinitionType => 'UPDATE',         # OPTIONAL
      );

    # Results:
    my $NextToken = $ListWirelessGatewayTaskDefinitionsResponse->NextToken;
    my $TaskDefinitions =
      $ListWirelessGatewayTaskDefinitionsResponse->TaskDefinitions;

# Returns a L<Paws::IoTWireless::ListWirelessGatewayTaskDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/ListWirelessGatewayTaskDefinitions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.



=head2 TaskDefinitionType => Str

A filter to list only the wireless gateway task definitions that use
this task definition type.

Valid values are: C<"UPDATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWirelessGatewayTaskDefinitions in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

