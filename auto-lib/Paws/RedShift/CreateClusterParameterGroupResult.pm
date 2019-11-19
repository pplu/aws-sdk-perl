# Generated from callresult_class.tt

package Paws::RedShift::CreateClusterParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_ClusterParameterGroup/;
  has ClusterParameterGroup => (is => 'ro', isa => RedShift_ClusterParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterParameterGroup' => {
                                            'type' => 'RedShift_ClusterParameterGroup',
                                            'class' => 'Paws::RedShift::ClusterParameterGroup'
                                          },
               '_request_id' => {
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

Paws::RedShift::CreateClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 ClusterParameterGroup => RedShift_ClusterParameterGroup




=head2 _request_id => Str


=cut

