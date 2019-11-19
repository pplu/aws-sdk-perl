# Generated from callresult_class.tt

package Paws::Neptune::DBClusterParameterGroupsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_DBClusterParameterGroup/;
  has DBClusterParameterGroups => (is => 'ro', isa => ArrayRef[Neptune_DBClusterParameterGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBClusterParameterGroups' => {
                                               'type' => 'ArrayRef[Neptune_DBClusterParameterGroup]',
                                               'class' => 'Paws::Neptune::DBClusterParameterGroup'
                                             }
             },
  'NameInRequest' => {
                       'DBClusterParameterGroups' => 'DBClusterParameterGroup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBClusterParameterGroupsMessage

=head1 ATTRIBUTES


=head2 DBClusterParameterGroups => ArrayRef[Neptune_DBClusterParameterGroup]

A list of DB cluster parameter groups.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBClusterParameterGroups> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

