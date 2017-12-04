
package Paws::CloudFormation::CreateStackInstancesOutput;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackInstancesOutput

=head1 ATTRIBUTES


=head2 OperationId => Str

The unique identifier for this stack set operation.


=head2 _request_id => Str


=cut

