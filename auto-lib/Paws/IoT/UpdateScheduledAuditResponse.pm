
package Paws::IoT::UpdateScheduledAuditResponse;
  use Moose;
  has ScheduledAuditArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scheduledAuditArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateScheduledAuditResponse

=head1 ATTRIBUTES


=head2 ScheduledAuditArn => Str

The ARN of the scheduled audit.


=head2 _request_id => Str


=cut

