# Generated from callresult_class.tt

package Paws::RDS::DeleteCustomAvailabilityZoneResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_CustomAvailabilityZone/;
  has CustomAvailabilityZone => (is => 'ro', isa => RDS_CustomAvailabilityZone);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomAvailabilityZone' => {
                                             'class' => 'Paws::RDS::CustomAvailabilityZone',
                                             'type' => 'RDS_CustomAvailabilityZone'
                                           },
               '_request_id' => {
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

Paws::RDS::DeleteCustomAvailabilityZoneResult

=head1 ATTRIBUTES


=head2 CustomAvailabilityZone => RDS_CustomAvailabilityZone




=head2 _request_id => Str


=cut

