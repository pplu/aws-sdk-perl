# Generated from json/callresult_class.tt

package Paws::SSM::RegisterTaskWithMaintenanceWindowResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has WindowTaskId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WindowTaskId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterTaskWithMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowTaskId => Str

The ID of the task in the maintenance window.


=head2 _request_id => Str


=cut

1;