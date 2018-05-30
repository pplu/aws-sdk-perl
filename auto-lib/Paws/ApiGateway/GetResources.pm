
package Paws::ApiGateway::GetResources;
  use Moose;
  has Embed => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'embed');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Resources');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetResources - Arguments for method GetResources on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResources on the 
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResources.

As an example:

  $service_obj->GetResources(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>
=head1 ATTRIBUTES


=head2 Embed => ArrayRef[Str|Undef]

A query parameter used to retrieve the specified resources embedded in
the returned Resources resource in the response. This C<embed>
parameter value is a list of comma-separated strings. Currently, the
request supports only retrieval of the embedded Method resources this
way. The query parameter value must be a single-valued list and contain
the C<"methods"> string. For example, C<GET
/restapis/{restapi_id}/resources?embed=methods>.



=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 Position => Str

The current pagination position in the paged result set.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResources in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

