# Generated from callresult_class.tt

package Paws::Neptune::EventsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_Event/;
  has Events => (is => 'ro', isa => ArrayRef[Neptune_Event]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Events' => {
                             'class' => 'Paws::Neptune::Event',
                             'type' => 'ArrayRef[Neptune_Event]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
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

Paws::Neptune::EventsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[Neptune_Event]

A list of Event instances.


=head2 Marker => Str

An optional pagination token provided by a previous Events request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by C<MaxRecords> .


=head2 _request_id => Str


=cut

