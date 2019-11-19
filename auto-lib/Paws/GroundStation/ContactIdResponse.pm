
package Paws::GroundStation::ContactIdResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
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
             },
  'NameInRequest' => {
                       'ContactId' => 'contactId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ContactIdResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

UUID of a contact.


=head2 _request_id => Str


=cut

