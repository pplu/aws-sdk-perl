
package Paws::GlueDataBrew::StartJobRunResponse;
  use Moose;
  has RunId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::StartJobRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RunId => Str

A system-generated identifier for this particular job run.


=head2 _request_id => Str


=cut

