
package Paws::AmplifyBackend::UpdateBackendConfig;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has LoginAuthConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::LoginAuthConfigReqObj', traits => ['NameInRequest'], request_name => 'loginAuthConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBackendConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/config/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::UpdateBackendConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::UpdateBackendConfig - Arguments for method UpdateBackendConfig on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBackendConfig on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method UpdateBackendConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBackendConfig.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $UpdateBackendConfigResponse = $amplifybackend->UpdateBackendConfig(
      AppId           => 'My__string',
      LoginAuthConfig => {
        AwsCognitoIdentityPoolId => 'My__string',
        AwsCognitoRegion         => 'My__string',
        AwsUserPoolsId           => 'My__string',
        AwsUserPoolsWebClientId  => 'My__string',
      },    # OPTIONAL
    );

    # Results:
    my $AppId               = $UpdateBackendConfigResponse->AppId;
    my $BackendManagerAppId = $UpdateBackendConfigResponse->BackendManagerAppId;
    my $Error               = $UpdateBackendConfigResponse->Error;
    my $LoginAuthConfig     = $UpdateBackendConfigResponse->LoginAuthConfig;

    # Returns a L<Paws::AmplifyBackend::UpdateBackendConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/UpdateBackendConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 LoginAuthConfig => L<Paws::AmplifyBackend::LoginAuthConfigReqObj>

Describes the Amazon Cognito configuration for Admin UI access.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBackendConfig in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

