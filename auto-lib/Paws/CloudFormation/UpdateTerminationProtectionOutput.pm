
package Paws::CloudFormation::UpdateTerminationProtectionOutput;
  use Moose;
  has StackId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateTerminationProtectionOutput

=head1 ATTRIBUTES


=head2 StackId => Str

The unique ID of the stack.


=head2 _request_id => Str


=cut

