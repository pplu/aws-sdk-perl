
package Paws::Glue::BatchGetJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Job]');
  has JobsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::Glue::Job>]

A list of job definitions.


=head2 JobsNotFound => ArrayRef[Str|Undef]

A list of names of jobs not found.


=head2 _request_id => Str


=cut

1;