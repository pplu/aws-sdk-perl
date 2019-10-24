# Generated from callresult_class.tt

package Paws::RDS::PurchaseReservedDBInstancesOfferingResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_ReservedDBInstance/;
  has ReservedDBInstance => (is => 'ro', isa => RDS_ReservedDBInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReservedDBInstance' => {
                                         'class' => 'Paws::RDS::ReservedDBInstance',
                                         'type' => 'RDS_ReservedDBInstance'
                                       }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PurchaseReservedDBInstancesOfferingResult

=head1 ATTRIBUTES


=head2 ReservedDBInstance => RDS_ReservedDBInstance




=head2 _request_id => Str


=cut

