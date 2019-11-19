
package Paws::Pinpoint::PutEventsResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EventsResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_EventsResponse/;
  has EventsResponse => (is => 'ro', isa => Pinpoint_EventsResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventsResponse' => {
                                     'class' => 'Paws::Pinpoint::EventsResponse',
                                     'type' => 'Pinpoint_EventsResponse'
                                   }
             },
  'IsRequired' => {
                    'EventsResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PutEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventsResponse => Pinpoint_EventsResponse




=head2 _request_id => Str


=cut

