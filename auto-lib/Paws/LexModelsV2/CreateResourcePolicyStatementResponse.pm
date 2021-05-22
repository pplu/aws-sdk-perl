
package Paws::LexModelsV2::CreateResourcePolicyStatementResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateResourcePolicyStatementResponse

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the bot or bot alias that the
resource policy is attached to.


=head2 RevisionId => Str

The current revision of the resource policy. Use the revision ID to
make sure that you are updating the most current version of a resource
policy when you add a policy statement to a resource, delete a
resource, or update a resource.


=head2 _request_id => Str


=cut

