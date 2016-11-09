
package Paws::CloudFormation::CreateChangeSetOutput;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateChangeSetOutput

=head1 ATTRIBUTES


=head2 Id => Str

The Amazon Resource Name (ARN) of the change set.


=head2 StackId => Str

The unique ID of the stack.


=head2 _request_id => Str


=cut

