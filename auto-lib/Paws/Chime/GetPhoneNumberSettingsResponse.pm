
package Paws::Chime::GetPhoneNumberSettingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has CallingName => (is => 'ro', isa => Str);
  has CallingNameUpdatedTimestamp => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CallingNameUpdatedTimestamp' => {
                                                  'type' => 'Str'
                                                },
               'CallingName' => {
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

Paws::Chime::GetPhoneNumberSettingsResponse

=head1 ATTRIBUTES


=head2 CallingName => Str

The default outbound calling name for the account.


=head2 CallingNameUpdatedTimestamp => Str

The updated outbound calling name timestamp, in ISO 8601 format.


=head2 _request_id => Str


=cut

