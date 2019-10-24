# Generated from json/callresult_class.tt

package Paws::SSM::CancelMaintenanceWindowExecutionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has WindowExecutionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WindowExecutionId' => {
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

Paws::SSM::CancelMaintenanceWindowExecutionResult

=head1 ATTRIBUTES


=head2 WindowExecutionId => Str

The ID of the maintenance window execution that has been stopped.


=head2 _request_id => Str


=cut

1;