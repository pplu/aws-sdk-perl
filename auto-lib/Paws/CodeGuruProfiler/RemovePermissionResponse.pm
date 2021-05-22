
package Paws::CodeGuruProfiler::RemovePermissionResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::RemovePermissionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The JSON-formatted resource-based policy on the profiling group after
the specified permissions were removed.


=head2 B<REQUIRED> RevisionId => Str

A universally unique identifier (UUID) for the revision of the
resource-based policy after the specified permissions were removed. The
updated JSON-formatted policy is in the C<policy> element of the
response.


=head2 _request_id => Str


=cut

