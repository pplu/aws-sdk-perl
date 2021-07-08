
package Paws::AmplifyBackend::GetBackendJobResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime');
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has Operation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operation');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackendJobResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


=head2 BackendEnvironmentName => Str

The name of the backend environment.


=head2 CreateTime => Str

The time when the job was created.


=head2 Error => Str

If the request fails, this error is returned.


=head2 JobId => Str

The ID for the job.


=head2 Operation => Str

The name of the operation.


=head2 Status => Str

The current status of the request.


=head2 UpdateTime => Str

The time when the job was last updated.


=head2 _request_id => Str


=cut

