
package Paws::ApiGateway::GetAuthorizers;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit' );
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position' );
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAuthorizers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/authorizers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Authorizers');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetAuthorizers - Arguments for method GetAuthorizers on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAuthorizers on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetAuthorizers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAuthorizers.

As an example:

  $service_obj->GetAuthorizers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

Limit the number of Authorizer resources in the response.



=head2 Position => Str

If not all Authorizer resources in the response were present, the
position will specify where to start the next page of results.



=head2 B<REQUIRED> RestApiId => Str

The RestApi identifier for the Authorizers resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAuthorizers in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

