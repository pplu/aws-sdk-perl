
package Paws::ApiGateway::UpdateDocumentationVersion;
  use Moose;
  has DocumentationVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'documentationVersion' , required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDocumentationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/documentation/versions/{doc_version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DocumentationVersion');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateDocumentationVersion - Arguments for method UpdateDocumentationVersion on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocumentationVersion on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method UpdateDocumentationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocumentationVersion.

As an example:

  $service_obj->UpdateDocumentationVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentationVersion => Str

[Required] The version identifier of the to-be-updated documentation
version.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> RestApiId => Str

[Required] The identifier of an API of the to-be-updated documentation
version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocumentationVersion in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

