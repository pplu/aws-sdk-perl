
package Paws::AmplifyBackend::UpdateBackendJob;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has Operation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operation');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBackendJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/job/{backendEnvironmentName}/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::UpdateBackendJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::UpdateBackendJob - Arguments for method UpdateBackendJob on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBackendJob on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method UpdateBackendJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBackendJob.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $UpdateBackendJobResponse = $amplifybackend->UpdateBackendJob(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      JobId                  => 'My__string',
      Operation              => 'My__string',    # OPTIONAL
      Status                 => 'My__string',    # OPTIONAL
    );

    # Results:
    my $AppId = $UpdateBackendJobResponse->AppId;
    my $BackendEnvironmentName =
      $UpdateBackendJobResponse->BackendEnvironmentName;
    my $CreateTime = $UpdateBackendJobResponse->CreateTime;
    my $Error      = $UpdateBackendJobResponse->Error;
    my $JobId      = $UpdateBackendJobResponse->JobId;
    my $Operation  = $UpdateBackendJobResponse->Operation;
    my $Status     = $UpdateBackendJobResponse->Status;
    my $UpdateTime = $UpdateBackendJobResponse->UpdateTime;

    # Returns a L<Paws::AmplifyBackend::UpdateBackendJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/UpdateBackendJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> JobId => Str

The ID for the job.



=head2 Operation => Str

Filters the list of response objects to include only those with the
specified operation name.



=head2 Status => Str

Filters the list of response objects to include only those with the
specified status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBackendJob in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

