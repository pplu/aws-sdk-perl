
package Paws::ApiGatewayV2::DeleteRouteSettings;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has RouteKey => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'routeKey', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stageName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRouteSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/stages/{stageName}/routesettings/{routeKey}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DeleteRouteSettings - Arguments for method DeleteRouteSettings on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRouteSettings on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method DeleteRouteSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRouteSettings.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    $apigateway->DeleteRouteSettings(
      ApiId     => 'My__string',
      RouteKey  => 'My__string',
      StageName => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteRouteSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> RouteKey => Str

The route key.



=head2 B<REQUIRED> StageName => Str

The stage name. Stage names can only contain alphanumeric characters,
hyphens, and underscores. Maximum length is 128 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRouteSettings in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

