
package Paws::Glue::StartJobRunResponse;
  use Moose;
  has JobRunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartJobRunResponse

=head1 ATTRIBUTES


=head2 JobRunId => Str

The ID assigned to this job run.


=head2 _request_id => Str


=cut

1;