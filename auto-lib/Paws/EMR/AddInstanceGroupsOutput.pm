# Generated from json/callresult_class.tt

package Paws::EMR::AddInstanceGroupsOutput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::EMR::Types qw//;
  has ClusterArn => (is => 'ro', isa => Str);
  has InstanceGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has JobFlowId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobFlowId' => {
                                'type' => 'Str'
                              },
               'ClusterArn' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::AddInstanceGroupsOutput

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name of the cluster.


=head2 InstanceGroupIds => ArrayRef[Str|Undef]

Instance group IDs of the newly created instance groups.


=head2 JobFlowId => Str

The job flow ID in which the instance groups are added.


=head2 _request_id => Str


=cut

1;