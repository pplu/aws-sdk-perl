# Generated from callresult_class.tt

package Paws::Neptune::ApplyPendingMaintenanceActionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_ResourcePendingMaintenanceActions/;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => Neptune_ResourcePendingMaintenanceActions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourcePendingMaintenanceActions' => {
                                                        'class' => 'Paws::Neptune::ResourcePendingMaintenanceActions',
                                                        'type' => 'Neptune_ResourcePendingMaintenanceActions'
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

Paws::Neptune::ApplyPendingMaintenanceActionResult

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => Neptune_ResourcePendingMaintenanceActions




=head2 _request_id => Str


=cut

