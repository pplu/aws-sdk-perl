
package Paws::CloudFormation::GetStackPolicyOutput;
  use Moose;
  has StackPolicyBody => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetStackPolicyOutput

=head1 ATTRIBUTES


=head2 StackPolicyBody => Str

Structure containing the stack policy body. (For more information, go
to Prevent Updates to Stack Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html)
in the AWS CloudFormation User Guide.)


=head2 _request_id => Str


=cut

