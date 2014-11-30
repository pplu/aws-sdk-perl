
package Paws::CloudFormation::UpdateStackOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStackOutput

=head1 ATTRIBUTES

=head2 StackId => Str

  

Unique identifier of the stack.











=cut

