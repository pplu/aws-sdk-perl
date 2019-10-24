# Generated from json/callresult_class.tt

package Paws::SSM::DeregisterTaskFromMaintenanceWindowResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has WindowId => (is => 'ro', isa => Str);
  has WindowTaskId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WindowId' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WindowTaskId' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeregisterTaskFromMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowId => Str

The ID of the maintenance window the task was removed from.


=head2 WindowTaskId => Str

The ID of the task removed from the maintenance window.


=head2 _request_id => Str


=cut

1;