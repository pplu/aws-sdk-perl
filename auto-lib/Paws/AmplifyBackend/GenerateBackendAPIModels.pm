
package Paws::AmplifyBackend::GenerateBackendAPIModels;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateBackendAPIModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/api/{backendEnvironmentName}/generateModels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::GenerateBackendAPIModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GenerateBackendAPIModels - Arguments for method GenerateBackendAPIModels on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateBackendAPIModels on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method GenerateBackendAPIModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateBackendAPIModels.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $GenerateBackendAPIModelsResponse =
      $amplifybackend->GenerateBackendAPIModels(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      ResourceName           => 'My__string',

      );

    # Results:
    my $AppId = $GenerateBackendAPIModelsResponse->AppId;
    my $BackendEnvironmentName =
      $GenerateBackendAPIModelsResponse->BackendEnvironmentName;
    my $Error     = $GenerateBackendAPIModelsResponse->Error;
    my $JobId     = $GenerateBackendAPIModelsResponse->JobId;
    my $Operation = $GenerateBackendAPIModelsResponse->Operation;
    my $Status    = $GenerateBackendAPIModelsResponse->Status;

   # Returns a L<Paws::AmplifyBackend::GenerateBackendAPIModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/GenerateBackendAPIModels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> ResourceName => Str

The name of this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateBackendAPIModels in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

