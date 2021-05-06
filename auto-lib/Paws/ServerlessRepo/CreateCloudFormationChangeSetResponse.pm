
package Paws::ServerlessRepo::CreateCloudFormationChangeSetResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has ChangeSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changeSetId');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion');
  has StackId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateCloudFormationChangeSetResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application Amazon Resource Name (ARN).


=head2 ChangeSetId => Str

The Amazon Resource Name (ARN) of the change set.

Length constraints: Minimum length of 1.

Pattern: ARN:[-a-zA-Z0-9:/]*


=head2 SemanticVersion => Str

The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 StackId => Str

The unique ID of the stack.


=head2 _request_id => Str


=cut

