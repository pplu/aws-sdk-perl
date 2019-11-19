
package Paws::Pinpoint::MessageBody;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has Message => (is => 'ro', isa => Str);
  has RequestID => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Message' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RequestID' => {
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

Paws::Pinpoint::MessageBody

=head1 ATTRIBUTES


=head2 Message => Str

The message that's returned from the API.


=head2 RequestID => Str

The unique identifier for the request or response.


=head2 _request_id => Str


=cut

