# Generated from callresult_class.tt

package Paws::Neptune::OrderableDBInstanceOptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_OrderableDBInstanceOption/;
  has Marker => (is => 'ro', isa => Str);
  has OrderableDBInstanceOptions => (is => 'ro', isa => ArrayRef[Neptune_OrderableDBInstanceOption]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'OrderableDBInstanceOptions' => 'OrderableDBInstanceOption'
                     },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrderableDBInstanceOptions' => {
                                                 'class' => 'Paws::Neptune::OrderableDBInstanceOption',
                                                 'type' => 'ArrayRef[Neptune_OrderableDBInstanceOption]'
                                               }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::OrderableDBInstanceOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous
OrderableDBInstanceOptions request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords> .


=head2 OrderableDBInstanceOptions => ArrayRef[Neptune_OrderableDBInstanceOption]

An OrderableDBInstanceOption structure containing information about
orderable options for the DB instance.


=head2 _request_id => Str


=cut

