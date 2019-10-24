# Generated from json/callresult_class.tt

package Paws::CodeDeploy::DeleteDeploymentGroupOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_AutoScalingGroup/;
  has HooksNotCleanedUp => (is => 'ro', isa => ArrayRef[CodeDeploy_AutoScalingGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HooksNotCleanedUp' => {
                                        'class' => 'Paws::CodeDeploy::AutoScalingGroup',
                                        'type' => 'ArrayRef[CodeDeploy_AutoScalingGroup]'
                                      }
             },
  'NameInRequest' => {
                       'HooksNotCleanedUp' => 'hooksNotCleanedUp'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeleteDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 HooksNotCleanedUp => ArrayRef[CodeDeploy_AutoScalingGroup]

If the output contains no data, and the corresponding deployment group
contained at least one Auto Scaling group, AWS CodeDeploy successfully
removed all corresponding Auto Scaling lifecycle event hooks from the
Amazon EC2 instances in the Auto Scaling group. If the output contains
data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event
hooks from the Amazon EC2 instances in the Auto Scaling group.


=head2 _request_id => Str


=cut

1;