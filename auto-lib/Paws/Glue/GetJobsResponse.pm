
package Paws::Glue::GetJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Job]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::Glue::Job>]

A list of job definitions.


=head2 NextToken => Str

A continuation token, if not all job definitions have yet been
returned.


=head2 _request_id => Str


=cut

1;