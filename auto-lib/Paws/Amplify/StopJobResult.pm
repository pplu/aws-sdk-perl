
package Paws::Amplify::StopJobResult;
  use Moose;
  has JobSummary => (is => 'ro', isa => 'Paws::Amplify::JobSummary', traits => ['NameInRequest'], request_name => 'jobSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::StopJobResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummary => L<Paws::Amplify::JobSummary>

The summary for the job.


=head2 _request_id => Str


=cut

