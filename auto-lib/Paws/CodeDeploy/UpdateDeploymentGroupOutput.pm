# Generated from json/callresult_class.tt

package Paws::CodeDeploy::UpdateDeploymentGroupOutput;
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
                                        'type' => 'ArrayRef[CodeDeploy_AutoScalingGroup]',
                                        'class' => 'Paws::CodeDeploy::AutoScalingGroup'
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

Paws::CodeDeploy::UpdateDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 HooksNotCleanedUp => ArrayRef[CodeDeploy_AutoScalingGroup]

If the output contains no data, and the corresponding deployment group
contained at least one Auto Scaling group, AWS CodeDeploy successfully
removed all corresponding Auto Scaling lifecycle event hooks from the
AWS account. If the output contains data, AWS CodeDeploy could not
remove some Auto Scaling lifecycle event hooks from the AWS account.


=head2 _request_id => Str


=cut

1;