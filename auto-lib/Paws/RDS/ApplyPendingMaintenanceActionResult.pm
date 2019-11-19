# Generated from callresult_class.tt

package Paws::RDS::ApplyPendingMaintenanceActionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_ResourcePendingMaintenanceActions/;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => RDS_ResourcePendingMaintenanceActions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourcePendingMaintenanceActions' => {
                                                        'type' => 'RDS_ResourcePendingMaintenanceActions',
                                                        'class' => 'Paws::RDS::ResourcePendingMaintenanceActions'
                                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ApplyPendingMaintenanceActionResult

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => RDS_ResourcePendingMaintenanceActions




=head2 _request_id => Str


=cut

