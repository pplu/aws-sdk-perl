
package Paws::CloudFormation::CreateStackSetOutput;
  use Moose;
  has StackSetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackSetOutput

=head1 ATTRIBUTES


=head2 StackSetId => Str

The ID of the stack set that you're creating.


=head2 _request_id => Str


=cut

