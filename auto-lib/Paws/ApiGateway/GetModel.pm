
package Paws::ApiGateway::GetModel;
  use Moose;
  has Flatten => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'flatten');
  has ModelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelName', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/models/{model_name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Model');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetModel - Arguments for method GetModel on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModel on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModel.

As an example:

  $service_obj->GetModel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Flatten => Bool

A query parameter of a Boolean value to resolve (C<true>) all external
model references and returns a flattened model schema or not (C<false>)
The default is C<false>.



=head2 B<REQUIRED> ModelName => Str

[Required] The name of the model as an identifier.



=head2 B<REQUIRED> RestApiId => Str

[Required] The RestApi identifier under which the Model exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModel in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

