
package Paws::Chime::ListVoiceConnectorTerminationCredentialsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Chime::Types qw//;
  has Usernames => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Usernames' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListVoiceConnectorTerminationCredentialsResponse

=head1 ATTRIBUTES


=head2 Usernames => ArrayRef[Str|Undef]

A list of user names.


=head2 _request_id => Str


=cut

