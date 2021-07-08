
package Paws::AmplifyBackend::GetBackendAPIModels;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBackendAPIModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/api/{backendEnvironmentName}/getModels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::GetBackendAPIModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackendAPIModels - Arguments for method GetBackendAPIModels on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBackendAPIModels on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method GetBackendAPIModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBackendAPIModels.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $GetBackendAPIModelsResponse = $amplifybackend->GetBackendAPIModels(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      ResourceName           => 'My__string',

    );

    # Results:
    my $Models = $GetBackendAPIModelsResponse->Models;
    my $Status = $GetBackendAPIModelsResponse->Status;

    # Returns a L<Paws::AmplifyBackend::GetBackendAPIModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/GetBackendAPIModels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> ResourceName => Str

The name of this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBackendAPIModels in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

