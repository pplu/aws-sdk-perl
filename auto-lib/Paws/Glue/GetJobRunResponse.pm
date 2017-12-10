
package Paws::Glue::GetJobRunResponse;
  use Moose;
  has JobRun => (is => 'ro', isa => 'Paws::Glue::JobRun');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobRunResponse

=head1 ATTRIBUTES


=head2 JobRun => L<Paws::Glue::JobRun>

The requested job-run metadata.


=head2 _request_id => Str


=cut

1;