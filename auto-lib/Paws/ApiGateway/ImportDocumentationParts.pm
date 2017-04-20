
package Paws::ApiGateway::ImportDocumentationParts;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failOnWarnings' );
  has Mode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'mode' );
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportDocumentationParts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/documentation/parts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DocumentationPartIds');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ImportDocumentationParts - Arguments for method ImportDocumentationParts on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportDocumentationParts on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method ImportDocumentationParts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportDocumentationParts.

As an example:

  $service_obj->ImportDocumentationParts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

[Required] Raw byte array representing the to-be-imported documentation
parts. To import from a Swagger file, this is a JSON object.



=head2 FailOnWarnings => Bool

A query parameter to specify whether to rollback the documentation
importation (C<true>) or not (C<false>) when a warning is encountered.
The default value is C<false>.



=head2 Mode => Str

A query parameter to indicate whether to overwrite (C<OVERWRITE>) any
existing DocumentationParts definition or to merge (C<MERGE>) the new
definition into the existing one. The default value is C<MERGE>.

Valid values are: C<"merge">, C<"overwrite">

=head2 B<REQUIRED> RestApiId => Str

[Required] The identifier of an API of the to-be-imported documentation
parts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportDocumentationParts in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

