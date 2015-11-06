
package Paws::ApiGateway::CreateModel;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has Schema => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Model');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateModelResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateModel - Arguments for method CreateModel on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModel on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModel.

As an example:

  $service_obj->CreateModel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> ContentType => Str

  The content-type for the model.

=head2 Description => Str

  The description of the model.

=head2 B<REQUIRED> Name => Str

  The name of the model.

=head2 B<REQUIRED> RestApiId => Str

  The RestApi identifier under which the Model will be created.

=head2 Schema => Str

  The schema for the model. For C<application/json> models, this should
be JSON-schema draft v4 model.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModel in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

