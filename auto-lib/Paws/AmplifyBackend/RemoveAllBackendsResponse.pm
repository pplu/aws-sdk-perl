
package Paws::AmplifyBackend::RemoveAllBackendsResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has Operation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operation');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::RemoveAllBackendsResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


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

