
package Paws::Amplify::StartJobResult;
  use Moose;
  has JobSummary => (is => 'ro', isa => 'Paws::Amplify::JobSummary', traits => ['NameInRequest'], request_name => 'jobSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::StartJobResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummary => L<Paws::Amplify::JobSummary>

Summary for the Job.


=head2 _request_id => Str


=cut

