
package Paws::ApiGateway::GetStages;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deploymentId' );
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Stages');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetStagesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetStages - Arguments for method GetStages on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStages on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetStages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStages.

As an example:

  $service_obj->GetStages(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DeploymentId => Str

  The stages' deployment identifiers.


=head2 B<REQUIRED> RestApiId => Str

  The stages' API identifiers.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStages in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

