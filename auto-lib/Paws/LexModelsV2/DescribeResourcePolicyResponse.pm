
package Paws::LexModelsV2::DescribeResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The JSON structure that contains the resource policy. For more
information about the contents of a JSON policy document, see IAM JSON
policy reference
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html).


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

