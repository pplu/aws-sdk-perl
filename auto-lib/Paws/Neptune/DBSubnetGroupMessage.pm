# Generated from callresult_class.tt

package Paws::Neptune::DBSubnetGroupMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_DBSubnetGroup/;
  has DBSubnetGroups => (is => 'ro', isa => ArrayRef[Neptune_DBSubnetGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBSubnetGroups' => {
                                     'class' => 'Paws::Neptune::DBSubnetGroup',
                                     'type' => 'ArrayRef[Neptune_DBSubnetGroup]'
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

Paws::Neptune::DBSubnetGroupMessage

=head1 ATTRIBUTES


=head2 DBSubnetGroups => ArrayRef[Neptune_DBSubnetGroup]

A list of DBSubnetGroup instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

