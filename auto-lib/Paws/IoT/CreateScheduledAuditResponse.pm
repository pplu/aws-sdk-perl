
package Paws::IoT::CreateScheduledAuditResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ScheduledAuditArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScheduledAuditArn' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'ScheduledAuditArn' => 'scheduledAuditArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateScheduledAuditResponse

=head1 ATTRIBUTES


=head2 ScheduledAuditArn => Str

The ARN of the scheduled audit.


=head2 _request_id => Str


=cut

