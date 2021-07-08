
package Paws::AmplifyBackend::DeleteBackendAPI;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::BackendAPIResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig');
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackendAPI');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/api/{backendEnvironmentName}/remove');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::DeleteBackendAPIResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::DeleteBackendAPI - Arguments for method DeleteBackendAPI on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackendAPI on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method DeleteBackendAPI.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackendAPI.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $DeleteBackendAPIResponse = $amplifybackend->DeleteBackendAPI(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      ResourceName           => 'My__string',
      ResourceConfig         => {
        AdditionalAuthTypes => [
          {
            Mode => 'API_KEY'
            , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT; OPTIONAL
            Settings => {
              CognitoUserPoolId  => 'My__string',
              Description        => 'My__string',
              ExpirationTime     => 1,              # OPTIONAL
              OpenIDAuthTTL      => 'My__string',
              OpenIDClientId     => 'My__string',
              OpenIDIatTTL       => 'My__string',
              OpenIDIssueURL     => 'My__string',
              OpenIDProviderName => 'My__string',
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        ApiName            => 'My__string',
        ConflictResolution => {
          ResolutionStrategy => 'OPTIMISTIC_CONCURRENCY'
          ,  # values: OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE; OPTIONAL
        },    # OPTIONAL
        DefaultAuthType => {
          Mode => 'API_KEY'
          , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT; OPTIONAL
          Settings => {
            CognitoUserPoolId  => 'My__string',
            Description        => 'My__string',
            ExpirationTime     => 1,              # OPTIONAL
            OpenIDAuthTTL      => 'My__string',
            OpenIDClientId     => 'My__string',
            OpenIDIatTTL       => 'My__string',
            OpenIDIssueURL     => 'My__string',
            OpenIDProviderName => 'My__string',
          },    # OPTIONAL
        },
        Service         => 'My__string',
        TransformSchema => 'My__string',
      },    # OPTIONAL
    );

    # Results:
    my $AppId = $DeleteBackendAPIResponse->AppId;
    my $BackendEnvironmentName =
      $DeleteBackendAPIResponse->BackendEnvironmentName;
    my $Error     = $DeleteBackendAPIResponse->Error;
    my $JobId     = $DeleteBackendAPIResponse->JobId;
    my $Operation = $DeleteBackendAPIResponse->Operation;
    my $Status    = $DeleteBackendAPIResponse->Status;

    # Returns a L<Paws::AmplifyBackend::DeleteBackendAPIResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/DeleteBackendAPI>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 ResourceConfig => L<Paws::AmplifyBackend::BackendAPIResourceConfig>

Defines the resource configuration for the data model in your Amplify
project.



=head2 B<REQUIRED> ResourceName => Str

The name of this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackendAPI in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

