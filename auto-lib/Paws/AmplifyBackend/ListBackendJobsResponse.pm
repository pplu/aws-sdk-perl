
package Paws::AmplifyBackend::ListBackendJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyBackend::BackendJobRespObj]', traits => ['NameInRequest'], request_name => 'jobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::ListBackendJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::AmplifyBackend::BackendJobRespObj>]

An array of jobs and their properties.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

