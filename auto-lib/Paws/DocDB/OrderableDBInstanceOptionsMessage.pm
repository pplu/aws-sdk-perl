# Generated from callresult_class.tt

package Paws::DocDB::OrderableDBInstanceOptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_OrderableDBInstanceOption/;
  has Marker => (is => 'ro', isa => Str);
  has OrderableDBInstanceOptions => (is => 'ro', isa => ArrayRef[DocDB_OrderableDBInstanceOption]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrderableDBInstanceOptions' => {
                                                 'class' => 'Paws::DocDB::OrderableDBInstanceOption',
                                                 'type' => 'ArrayRef[DocDB_OrderableDBInstanceOption]'
                                               },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'OrderableDBInstanceOptions' => 'OrderableDBInstanceOption'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::OrderableDBInstanceOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 OrderableDBInstanceOptions => ArrayRef[DocDB_OrderableDBInstanceOption]

The options that are available for a particular orderable DB instance.


=head2 _request_id => Str


=cut

