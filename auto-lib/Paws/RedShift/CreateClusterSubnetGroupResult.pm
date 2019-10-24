# Generated from callresult_class.tt

package Paws::RedShift::CreateClusterSubnetGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_ClusterSubnetGroup/;
  has ClusterSubnetGroup => (is => 'ro', isa => RedShift_ClusterSubnetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterSubnetGroup' => {
                                         'class' => 'Paws::RedShift::ClusterSubnetGroup',
                                         'type' => 'RedShift_ClusterSubnetGroup'
                                       }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateClusterSubnetGroupResult

=head1 ATTRIBUTES


=head2 ClusterSubnetGroup => RedShift_ClusterSubnetGroup




=head2 _request_id => Str


=cut

