
package Paws::CodeGuruProfiler::GetPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::GetPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The JSON-formatted resource-based policy attached to the
C<ProfilingGroup>.


=head2 B<REQUIRED> RevisionId => Str

A unique identifier for the current revision of the returned policy.


=head2 _request_id => Str


=cut

