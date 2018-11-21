
package Paws::AppSync::CreateGraphqlApi;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType', required => 1);
  has LogConfig => (is => 'ro', isa => 'Paws::AppSync::LogConfig', traits => ['NameInRequest'], request_name => 'logConfig');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OpenIDConnectConfig => (is => 'ro', isa => 'Paws::AppSync::OpenIDConnectConfig', traits => ['NameInRequest'], request_name => 'openIDConnectConfig');
  has UserPoolConfig => (is => 'ro', isa => 'Paws::AppSync::UserPoolConfig', traits => ['NameInRequest'], request_name => 'userPoolConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGraphqlApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateGraphqlApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateGraphqlApi - Arguments for method CreateGraphqlApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGraphqlApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateGraphqlApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGraphqlApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateGraphqlApiResponse = $appsync->CreateGraphqlApi(
      AuthenticationType => 'API_KEY',
      Name               => 'MyString',
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
    my $GraphqlApi = $CreateGraphqlApiResponse->GraphqlApi;

    # Returns a L<Paws::AppSync::CreateGraphqlApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateGraphqlApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationType => Str

The authentication type: API key, AWS IAM, or Amazon Cognito user
pools.

Valid values are: C<"API_KEY">, C<"AWS_IAM">, C<"AMAZON_COGNITO_USER_POOLS">, C<"OPENID_CONNECT">

=head2 LogConfig => L<Paws::AppSync::LogConfig>

The Amazon CloudWatch Logs configuration.



=head2 B<REQUIRED> Name => Str

A user-supplied name for the C<GraphqlApi>.



=head2 OpenIDConnectConfig => L<Paws::AppSync::OpenIDConnectConfig>

The OpenID Connect configuration.



=head2 UserPoolConfig => L<Paws::AppSync::UserPoolConfig>

The Amazon Cognito user pool configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGraphqlApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

