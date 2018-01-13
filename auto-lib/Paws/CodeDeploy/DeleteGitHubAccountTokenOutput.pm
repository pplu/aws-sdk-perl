
package Paws::CodeDeploy::DeleteGitHubAccountTokenOutput;
  use Moose;
  has TokenName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeleteGitHubAccountTokenOutput

=head1 ATTRIBUTES


=head2 TokenName => Str

The name of the GitHub account connection that was deleted.


=head2 _request_id => Str


=cut

1;