
package Paws::EC2::ModifyInstanceEventStartTimeResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_InstanceStatusEvent/;
  has Event => (is => 'ro', isa => EC2_InstanceStatusEvent);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Event' => {
                            'class' => 'Paws::EC2::InstanceStatusEvent',
                            'type' => 'EC2_InstanceStatusEvent'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Event' => 'event'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceEventStartTimeResult

=head1 ATTRIBUTES


=head2 Event => EC2_InstanceStatusEvent




=head2 _request_id => Str


=cut

