
package Paws::Connect::StartOutboundVoiceContactResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw//;
  has ContactId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContactId' => {
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

Paws::Connect::StartOutboundVoiceContactResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

The identifier of this contact within the Amazon Connect instance.


=head2 _request_id => Str


=cut

