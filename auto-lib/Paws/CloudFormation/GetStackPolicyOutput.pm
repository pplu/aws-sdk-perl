
package Paws::CloudFormation::GetStackPolicyOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackPolicyBody => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetStackPolicyOutput

=head1 ATTRIBUTES

=head2 StackPolicyBody => Str

  

Structure containing the stack policy body. (For more information, go
to Prevent Updates to Stack Resources in the AWS CloudFormation User
Guide.)











=cut

