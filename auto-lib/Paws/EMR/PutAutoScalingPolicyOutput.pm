# Generated from json/callresult_class.tt

package Paws::EMR::PutAutoScalingPolicyOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw/EMR_AutoScalingPolicyDescription/;
  has AutoScalingPolicy => (is => 'ro', isa => EMR_AutoScalingPolicyDescription);
  has ClusterArn => (is => 'ro', isa => Str);
  has ClusterId => (is => 'ro', isa => Str);
  has InstanceGroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'ClusterId' => {
                                'type' => 'Str'
                              },
               'AutoScalingPolicy' => {
                                        'class' => 'Paws::EMR::AutoScalingPolicyDescription',
                                        'type' => 'EMR_AutoScalingPolicyDescription'
                                      },
               'InstanceGroupId' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::PutAutoScalingPolicyOutput

=head1 ATTRIBUTES


=head2 AutoScalingPolicy => EMR_AutoScalingPolicyDescription

The automatic scaling policy definition.


=head2 ClusterArn => Str

The Amazon Resource Name of the cluster.


=head2 ClusterId => Str

Specifies the ID of a cluster. The instance group to which the
automatic scaling policy is applied is within this cluster.


=head2 InstanceGroupId => Str

Specifies the ID of the instance group to which the scaling policy is
applied.


=head2 _request_id => Str


=cut

1;