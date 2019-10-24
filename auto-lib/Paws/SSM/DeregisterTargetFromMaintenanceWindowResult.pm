# Generated from json/callresult_class.tt

package Paws::SSM::DeregisterTargetFromMaintenanceWindowResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has WindowId => (is => 'ro', isa => Str);
  has WindowTargetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WindowTargetId' => {
                                     'type' => 'Str'
                                   },
               'WindowId' => {
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

Paws::SSM::DeregisterTargetFromMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowId => Str

The ID of the maintenance window the target was removed from.


=head2 WindowTargetId => Str

The ID of the removed target definition.


=head2 _request_id => Str


=cut

1;