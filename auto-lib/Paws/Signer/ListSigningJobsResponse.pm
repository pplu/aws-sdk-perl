
package Paws::Signer::ListSigningJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Signer::SigningJob]', traits => ['NameInRequest'], request_name => 'jobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::Signer::SigningJob>]

A list of your signing jobs.


=head2 NextToken => Str

String for specifying the next set of paginated results.


=head2 _request_id => Str


=cut

