
package Paws::ApiGateway::PutRestApi;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failOnWarnings' );
  has Mode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'mode' );
  has Parameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['ParamInQuery'], query_name => 'parameters' );
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutRestApi - Arguments for method PutRestApi on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRestApi on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method PutRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRestApi.

As an example:

  $service_obj->PutRestApi(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

The PUT request body containing external API definitions. Currently,
only Swagger definition JSON files are supported.



=head2 FailOnWarnings => Bool

A query parameter to indicate whether to rollback the API update
(C<true>) or not (C<false>) when a warning is encountered. The default
value is C<false>.



=head2 Mode => Str

The C<mode> query parameter to specify the update mode. Valid values
are "merge" and "overwrite". By default, the update mode is "merge".

Valid values are: C<"merge">, C<"overwrite">

=head2 Parameters => L<Paws::ApiGateway::MapOfStringToString>

Custom headers supplied as part of the request.



=head2 B<REQUIRED> RestApiId => Str

The identifier of the RestApi to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

