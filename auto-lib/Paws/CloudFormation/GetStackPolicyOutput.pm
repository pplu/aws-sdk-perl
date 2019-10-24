# Generated from callresult_class.tt

package Paws::CloudFormation::GetStackPolicyOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has StackPolicyBody => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackPolicyBody' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::GetStackPolicyOutput

=head1 ATTRIBUTES


=head2 StackPolicyBody => Str

Structure containing the stack policy body. (For more information, go
to Prevent Updates to Stack Resources
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html)
in the AWS CloudFormation User Guide.)


=head2 _request_id => Str


=cut

