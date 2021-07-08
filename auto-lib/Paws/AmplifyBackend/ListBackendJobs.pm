
package Paws::AmplifyBackend::ListBackendJobs;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Operation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operation');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBackendJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/job/{backendEnvironmentName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::ListBackendJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::ListBackendJobs - Arguments for method ListBackendJobs on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBackendJobs on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method ListBackendJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBackendJobs.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $ListBackendJobsResponse = $amplifybackend->ListBackendJobs(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',
      JobId                  => 'My__string',    # OPTIONAL
      MaxResults             => 1,               # OPTIONAL
      NextToken              => 'My__string',    # OPTIONAL
      Operation              => 'My__string',    # OPTIONAL
      Status                 => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Jobs      = $ListBackendJobsResponse->Jobs;
    my $NextToken = $ListBackendJobsResponse->NextToken;

    # Returns a L<Paws::AmplifyBackend::ListBackendJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/ListBackendJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.



=head2 JobId => Str

The ID for the job.



=head2 MaxResults => Int

The maximum number of results that you want in the response.



=head2 NextToken => Str

The token for the next set of results.



=head2 Operation => Str

Filters the list of response objects to include only those with the
specified operation name.



=head2 Status => Str

Filters the list of response objects to include only those with the
specified status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBackendJobs in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

