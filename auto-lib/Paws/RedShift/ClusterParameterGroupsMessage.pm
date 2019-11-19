# Generated from callresult_class.tt

package Paws::RedShift::ClusterParameterGroupsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_ClusterParameterGroup/;
  has Marker => (is => 'ro', isa => Str);
  has ParameterGroups => (is => 'ro', isa => ArrayRef[RedShift_ClusterParameterGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ParameterGroups' => 'ClusterParameterGroup'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ParameterGroups' => {
                                      'type' => 'ArrayRef[RedShift_ClusterParameterGroup]',
                                      'class' => 'Paws::RedShift::ClusterParameterGroup'
                                    },
               'Marker' => {
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

Paws::RedShift::ClusterParameterGroupsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 ParameterGroups => ArrayRef[RedShift_ClusterParameterGroup]

A list of ClusterParameterGroup instances. Each instance describes one
cluster parameter group.


=head2 _request_id => Str


=cut

