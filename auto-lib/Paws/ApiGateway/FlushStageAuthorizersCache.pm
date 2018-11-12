
package Paws::ApiGateway::FlushStageAuthorizersCache;
  use Moose;
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stage_name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'FlushStageAuthorizersCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::FlushStageAuthorizersCache - Arguments for method FlushStageAuthorizersCache on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method FlushStageAuthorizersCache on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method FlushStageAuthorizersCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FlushStageAuthorizersCache.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->FlushStageAuthorizersCache(
      RestApiId => 'MyString',
      StageName => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/FlushStageAuthorizersCache>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.



=head2 B<REQUIRED> StageName => Str

The name of the stage to flush.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method FlushStageAuthorizersCache in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

