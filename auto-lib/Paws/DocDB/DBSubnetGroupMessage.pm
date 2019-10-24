# Generated from callresult_class.tt

package Paws::DocDB::DBSubnetGroupMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_DBSubnetGroup/;
  has DBSubnetGroups => (is => 'ro', isa => ArrayRef[DocDB_DBSubnetGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBSubnetGroups' => {
                                     'class' => 'Paws::DocDB::DBSubnetGroup',
                                     'type' => 'ArrayRef[DocDB_DBSubnetGroup]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBSubnetGroups' => 'DBSubnetGroup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBSubnetGroupMessage

=head1 ATTRIBUTES


=head2 DBSubnetGroups => ArrayRef[DocDB_DBSubnetGroup]

Detailed information about one or more DB subnet groups.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

