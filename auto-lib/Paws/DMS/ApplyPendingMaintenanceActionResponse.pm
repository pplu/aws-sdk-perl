# Generated from json/callresult_class.tt

package Paws::DMS::ApplyPendingMaintenanceActionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_ResourcePendingMaintenanceActions/;
  has ResourcePendingMaintenanceActions => (is => 'ro', isa => DMS_ResourcePendingMaintenanceActions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourcePendingMaintenanceActions' => {
                                                        'class' => 'Paws::DMS::ResourcePendingMaintenanceActions',
                                                        'type' => 'DMS_ResourcePendingMaintenanceActions'
                                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::ApplyPendingMaintenanceActionResponse

=head1 ATTRIBUTES


=head2 ResourcePendingMaintenanceActions => DMS_ResourcePendingMaintenanceActions

The AWS DMS resource that the pending maintenance action will be
applied to.


=head2 _request_id => Str


=cut

1;