# Generated from json/callresult_class.tt

package Paws::FMS::GetNotificationChannelResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FMS::Types qw//;
  has SnsRoleName => (is => 'ro', isa => Str);
  has SnsTopicArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnsRoleName' => {
                                  'type' => 'Str'
                                },
               'SnsTopicArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


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