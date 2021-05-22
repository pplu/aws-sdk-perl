
package Paws::GlueDataBrew::StopJobRunResponse;
  use Moose;
  has RunId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::StopJobRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RunId => Str

The ID of the job run that you stopped.


=head2 _request_id => Str


=cut

