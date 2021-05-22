
package Paws::AmplifyBackend::CreateBackendConfig;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendManagerAppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendManagerAppId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackendConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::CreateBackendConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::CreateBackendConfig - Arguments for method CreateBackendConfig on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackendConfig on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method CreateBackendConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackendConfig.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $CreateBackendConfigResponse = $amplifybackend->CreateBackendConfig(
      AppId               => 'My__string',
      BackendManagerAppId => 'My__string',    # OPTIONAL
    );

    # Results:
    my $AppId = $CreateBackendConfigResponse->AppId;
    my $BackendEnvironmentName =
      $CreateBackendConfigResponse->BackendEnvironmentName;
    my $JobId  = $CreateBackendConfigResponse->JobId;
    my $Status = $CreateBackendConfigResponse->Status;

    # Returns a L<Paws::AmplifyBackend::CreateBackendConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/CreateBackendConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 BackendManagerAppId => Str

The app ID for the backend manager.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackendConfig in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

