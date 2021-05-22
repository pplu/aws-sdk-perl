
package Paws::CodeArtifact::DeleteDomainPermissionsPolicyResult;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::CodeArtifact::ResourcePolicy', traits => ['NameInRequest'], request_name => 'policy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeleteDomainPermissionsPolicyResult

=head1 ATTRIBUTES


=head2 Policy => L<Paws::CodeArtifact::ResourcePolicy>

Information about the deleted resource policy after processing the
request.


=head2 _request_id => Str


=cut

