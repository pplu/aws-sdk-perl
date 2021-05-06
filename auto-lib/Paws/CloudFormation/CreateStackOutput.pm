
package Paws::CloudFormation::CreateStackOutput;
  use Moose;
  has StackId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackOutput

=head1 ATTRIBUTES


=head2 StackId => Str

Unique identifier of the stack.


=head2 _request_id => Str


=cut

