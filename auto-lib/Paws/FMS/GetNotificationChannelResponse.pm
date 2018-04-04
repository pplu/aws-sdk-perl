
package Paws::FMS::GetNotificationChannelResponse;
  use Moose;
  has SnsRoleName => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetNotificationChannelResponse

=head1 ATTRIBUTES


=head2 SnsRoleName => Str

The IAM role that is used by AWS Firewall Manager to record activity to
SNS.


=head2 SnsTopicArn => Str

The SNS topic that records AWS Firewall Manager activity.


=head2 _request_id => Str


=cut

1;