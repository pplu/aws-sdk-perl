
package Paws::AmplifyBackend::CreateBackend;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has AppName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appName', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::ResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig');
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackend');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::CreateBackendResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::CreateBackend - Arguments for method CreateBackend on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackend on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method CreateBackend.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackend.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $CreateBackendResponse = $amplifybackend->CreateBackend(
      AppId                  => 'My__string',
      AppName                => 'My__string',
      BackendEnvironmentName => 'My__string',
      ResourceConfig         => {

      },    # OPTIONAL
      ResourceName => 'My__string',    # OPTIONAL
    );

    # Results:
    my $AppId                  = $CreateBackendResponse->AppId;
    my $BackendEnvironmentName = $CreateBackendResponse->BackendEnvironmentName;
    my $Error                  = $CreateBackendResponse->Error;
    my $JobId                  = $CreateBackendResponse->JobId;
    my $Operation              = $CreateBackendResponse->Operation;
    my $Status                 = $CreateBackendResponse->Status;

    # Returns a L<Paws::AmplifyBackend::CreateBackendResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/CreateBackend>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> AppName => Str

The name of the app.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 ResourceConfig => L<Paws::AmplifyBackend::ResourceConfig>

The resource configuration for the create backend request.



=head2 ResourceName => Str

The name of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackend in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

