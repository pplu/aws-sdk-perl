
package Paws::ApiGateway::GetGatewayResponses;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGatewayResponses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/gatewayresponses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::GatewayResponses');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetGatewayResponses - Arguments for method GetGatewayResponses on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGatewayResponses on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetGatewayResponses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGatewayResponses.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $GatewayResponses = $apigateway->GetGatewayResponses(
      RestApiId => 'MyString',
      Limit     => 1,             # OPTIONAL
      Position  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Items    = $GatewayResponses->Items;
    my $Position = $GatewayResponses->Position;

    # Returns a L<Paws::ApiGateway::GatewayResponses> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetGatewayResponses>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500. The GatewayResponses collection does
not support pagination and the limit does not apply here.



=head2 Position => Str

The current pagination position in the paged result set. The
GatewayResponse collection does not support pagination and the position
does not apply here.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGatewayResponses in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

