# Generated from callresult_class.tt

package Paws::RedShift::ClusterParameterGroupNameMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw//;
  has ParameterGroupName => (is => 'ro', isa => Str);
  has ParameterGroupStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ParameterGroupName' => {
                                         'type' => 'Str'
                                       },
               'ParameterGroupStatus' => {
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

Paws::RedShift::ClusterParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 ParameterGroupName => Str

The name of the cluster parameter group.


=head2 ParameterGroupStatus => Str

The status of the parameter group. For example, if you made a change to
a parameter group name-value pair, then the change could be pending a
reboot of an associated cluster.


=head2 _request_id => Str


=cut

