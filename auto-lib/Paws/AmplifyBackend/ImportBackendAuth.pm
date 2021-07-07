
package Paws::AmplifyBackend::ImportBackendAuth;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityPoolId');
  has NativeClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nativeClientId', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userPoolId', required => 1);
  has WebClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webClientId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportBackendAuth');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/auth/{backendEnvironmentName}/import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::ImportBackendAuthResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::ImportBackendAuth - Arguments for method ImportBackendAuth on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportBackendAuth on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method ImportBackendAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportBackendAuth.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $ImportBackendAuthResponse = $amplifybackend->ImportBackendAuth(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      NativeClientId         => 'My__string',
      UserPoolId             => 'My__string',
      WebClientId            => 'My__string',
      IdentityPoolId         => 'My__string',    # OPTIONAL
    );

    # Results:
    my $AppId = $ImportBackendAuthResponse->AppId;
    my $BackendEnvironmentName =
      $ImportBackendAuthResponse->BackendEnvironmentName;
    my $Error     = $ImportBackendAuthResponse->Error;
    my $JobId     = $ImportBackendAuthResponse->JobId;
    my $Operation = $ImportBackendAuthResponse->Operation;
    my $Status    = $ImportBackendAuthResponse->Status;

    # Returns a L<Paws::AmplifyBackend::ImportBackendAuthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/ImportBackendAuth>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 IdentityPoolId => Str

The ID of the Amazon Cognito identity pool.



=head2 B<REQUIRED> NativeClientId => Str

The ID of the Amazon Cognito native client.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the Amazon Cognito user pool.



=head2 B<REQUIRED> WebClientId => Str

The ID of the Amazon Cognito web client.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportBackendAuth in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

