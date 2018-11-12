
package Paws::ApiGateway::GetStages;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deploymentId');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Stages');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetStages - Arguments for method GetStages on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStages on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetStages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStages.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Stages = $apigateway->GetStages(
      RestApiId    => 'MyString',
      DeploymentId => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Item = $Stages->Item;

    # Returns a L<Paws::ApiGateway::Stages> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetStages>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The stages' deployment identifiers.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStages in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

