
package Paws::MediaConvert::ListJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::Job]', traits => ['NameInRequest'], request_name => 'jobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::MediaConvert::Job>]

List of jobs


=head2 NextToken => Str

Use this string to request the next batch of jobs.


=head2 _request_id => Str


=cut

