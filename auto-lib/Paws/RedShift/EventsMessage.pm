# Generated from callresult_class.tt

package Paws::RedShift::EventsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Event/;
  has Events => (is => 'ro', isa => ArrayRef[RedShift_Event]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'Events' => {
                             'type' => 'ArrayRef[RedShift_Event]',
                             'class' => 'Paws::RedShift::Event'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Events' => 'Event'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[RedShift_Event]

A list of C<Event> instances.


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 _request_id => Str


=cut

