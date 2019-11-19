# Generated from json/callresult_class.tt

package Paws::SSM::RegisterTargetWithMaintenanceWindowResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has WindowTargetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WindowTargetId' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterTargetWithMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowTargetId => Str

The ID of the target definition in this maintenance window.


=head2 _request_id => Str


=cut

1;