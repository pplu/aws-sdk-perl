
package Paws::AmplifyBackend::GetBackendJob;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBackendJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/job/{backendEnvironmentName}/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::GetBackendJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackendJob - Arguments for method GetBackendJob on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBackendJob on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method GetBackendJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBackendJob.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $GetBackendJobResponse = $amplifybackend->GetBackendJob(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      JobId                  => 'My__string',

    );

    # Results:
    my $AppId                  = $GetBackendJobResponse->AppId;
    my $BackendEnvironmentName = $GetBackendJobResponse->BackendEnvironmentName;
    my $CreateTime             = $GetBackendJobResponse->CreateTime;
    my $Error                  = $GetBackendJobResponse->Error;
    my $JobId                  = $GetBackendJobResponse->JobId;
    my $Operation              = $GetBackendJobResponse->Operation;
    my $Status                 = $GetBackendJobResponse->Status;
    my $UpdateTime             = $GetBackendJobResponse->UpdateTime;

    # Returns a L<Paws::AmplifyBackend::GetBackendJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/GetBackendJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 B<REQUIRED> JobId => Str

The ID for the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBackendJob in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

