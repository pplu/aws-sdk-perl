# Generated from callresult_class.tt

package Paws::RDS::ReservedDBInstanceMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_ReservedDBInstance/;
  has Marker => (is => 'ro', isa => Str);
  has ReservedDBInstances => (is => 'ro', isa => ArrayRef[RDS_ReservedDBInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedDBInstances' => {
                                          'class' => 'Paws::RDS::ReservedDBInstance',
                                          'type' => 'ArrayRef[RDS_ReservedDBInstance]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ReservedDBInstances' => 'ReservedDBInstance'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ReservedDBInstanceMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReservedDBInstances => ArrayRef[RDS_ReservedDBInstance]

A list of reserved DB instances.


=head2 _request_id => Str


=cut

