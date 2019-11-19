
package Paws::IoT::StartOnDemandAuditTaskResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has TaskId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TaskId' => 'taskId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TaskId' => {
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

Paws::IoT::StartOnDemandAuditTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

The ID of the on-demand audit you started.


=head2 _request_id => Str


=cut

