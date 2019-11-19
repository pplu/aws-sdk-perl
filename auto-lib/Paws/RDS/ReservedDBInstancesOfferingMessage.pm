# Generated from callresult_class.tt

package Paws::RDS::ReservedDBInstancesOfferingMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_ReservedDBInstancesOffering/;
  has Marker => (is => 'ro', isa => Str);
  has ReservedDBInstancesOfferings => (is => 'ro', isa => ArrayRef[RDS_ReservedDBInstancesOffering]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedDBInstancesOfferings' => {
                                                   'class' => 'Paws::RDS::ReservedDBInstancesOffering',
                                                   'type' => 'ArrayRef[RDS_ReservedDBInstancesOffering]'
                                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ReservedDBInstancesOfferings' => 'ReservedDBInstancesOffering'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ReservedDBInstancesOfferingMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReservedDBInstancesOfferings => ArrayRef[RDS_ReservedDBInstancesOffering]

A list of reserved DB instance offerings.


=head2 _request_id => Str


=cut

