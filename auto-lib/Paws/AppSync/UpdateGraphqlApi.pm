
package Paws::AppSync::UpdateGraphqlApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType');
  has LogConfig => (is => 'ro', isa => 'Paws::AppSync::LogConfig', traits => ['NameInRequest'], request_name => 'logConfig');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OpenIDConnectConfig => (is => 'ro', isa => 'Paws::AppSync::OpenIDConnectConfig', traits => ['NameInRequest'], request_name => 'openIDConnectConfig');
  has UserPoolConfig => (is => 'ro', isa => 'Paws::AppSync::UserPoolConfig', traits => ['NameInRequest'], request_name => 'userPoolConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGraphqlApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateGraphqlApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateGraphqlApi - Arguments for method UpdateGraphqlApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGraphqlApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateGraphqlApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGraphqlApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateGraphqlApiResponse = $appsync->UpdateGraphqlApi(
      ApiId              => 'MyString',
      Name               => 'MyString',
      AuthenticationType => 'API_KEY',    # OPTIONAL
      LogConfig          => {
        CloudWatchLogsRoleArn => 'MyString',
        FieldLogLevel         => 'NONE',       # values: NONE, ERROR, ALL

      },    # OPTIONAL
      OpenIDConnectConfig => {
        Issuer   => 'MyString',
        AuthTTL  => 1,            # OPTIONAL
        ClientId => 'MyString',
        IatTTL   => 1,            # OPTIONAL
      },    # OPTIONAL
      UserPoolConfig => {
        AwsRegion        => 'MyString',
        DefaultAction    => 'ALLOW',      # values: ALLOW, DENY
        UserPoolId       => 'MyString',
        AppIdClientRegex => 'MyString',
      },    # OPTIONAL
    );

    # Results:
    my $GraphqlApi = $UpdateGraphqlApiResponse->GraphqlApi;

    # Returns a L<Paws::AppSync::UpdateGraphqlApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateGraphqlApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 AuthenticationType => Str

The new authentication type for the C<GraphqlApi> object.

Valid values are: C<"API_KEY">, C<"AWS_IAM">, C<"AMAZON_COGNITO_USER_POOLS">, C<"OPENID_CONNECT">

=head2 LogConfig => L<Paws::AppSync::LogConfig>

The Amazon CloudWatch Logs configuration for the C<GraphqlApi> object.



=head2 B<REQUIRED> Name => Str

The new name for the C<GraphqlApi> object.



=head2 OpenIDConnectConfig => L<Paws::AppSync::OpenIDConnectConfig>

The OpenID Connect configuration for the C<GraphqlApi> object.



=head2 UserPoolConfig => L<Paws::AppSync::UserPoolConfig>

The new Amazon Cognito user pool configuration for the C<GraphqlApi>
object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGraphqlApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

