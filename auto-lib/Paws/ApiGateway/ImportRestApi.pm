
package Paws::ApiGateway::ImportRestApi;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failOnWarnings' );
  has Parameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['ParamInQuery'], query_name => 'parameters' );

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis?mode=import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ImportRestApi - Arguments for method ImportRestApi on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportRestApi on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method ImportRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportRestApi.

As an example:

  $service_obj->ImportRestApi(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

The POST request body containing external API definitions. Currently,
only Swagger definition JSON files are supported. The maximum size of
the API definition file is 2MB.



=head2 FailOnWarnings => Bool

A query parameter to indicate whether to rollback the API creation
(C<true>) or not (C<false>) when a warning is encountered. The default
value is C<false>.



=head2 Parameters => L<Paws::ApiGateway::MapOfStringToString>

Custom header parameters as part of the request. For example, to
exclude DocumentationParts from an imported API, set
C<ignore=documentation> as a C<parameters> value, as in the AWS CLI
command of C<aws apigateway import-rest-api --parameters
ignore=documentation --body 'file:///path/to/imported-api-body.json>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

