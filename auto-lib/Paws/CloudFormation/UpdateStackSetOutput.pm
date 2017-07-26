
package Paws::CloudFormation::UpdateStackSetOutput;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStackSetOutput

=head1 ATTRIBUTES


=head2 OperationId => Str

The unique ID for this stack set operation.


=head2 _request_id => Str


=cut

