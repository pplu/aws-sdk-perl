# Generated from callresult_class.tt

package Paws::RDS::DBSubnetGroupMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBSubnetGroup/;
  has DBSubnetGroups => (is => 'ro', isa => ArrayRef[RDS_DBSubnetGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DBSubnetGroups' => 'DBSubnetGroup'
                     },
  'types' => {
               'DBSubnetGroups' => {
                                     'type' => 'ArrayRef[RDS_DBSubnetGroup]',
                                     'class' => 'Paws::RDS::DBSubnetGroup'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::RDS::DBSubnetGroupMessage

=head1 ATTRIBUTES


=head2 DBSubnetGroups => ArrayRef[RDS_DBSubnetGroup]

A list of C<DBSubnetGroup> instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

