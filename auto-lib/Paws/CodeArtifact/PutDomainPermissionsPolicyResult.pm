
package Paws::CodeArtifact::PutDomainPermissionsPolicyResult;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::CodeArtifact::ResourcePolicy', traits => ['NameInRequest'], request_name => 'policy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PutDomainPermissionsPolicyResult

=head1 ATTRIBUTES


=head2 Policy => L<Paws::CodeArtifact::ResourcePolicy>

The resource policy that was set after processing the request.


=head2 _request_id => Str


=cut

