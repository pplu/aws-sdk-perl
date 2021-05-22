
package Paws::AmplifyBackend::DeleteBackendAuthResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName');
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has Operation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operation');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::DeleteBackendAuthResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


=head2 BackendEnvironmentName => Str

The name of the backend environment.


=head2 Error => Str

If the request failed, this is the returned error.


=head2 JobId => Str

The ID for the job.


=head2 Operation => Str

The name of the operation.


=head2 Status => Str

The current status of the request.


=head2 _request_id => Str


=cut

