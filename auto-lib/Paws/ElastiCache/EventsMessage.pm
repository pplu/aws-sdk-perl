# Generated from callresult_class.tt

package Paws::ElastiCache::EventsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_Event/;
  has Events => (is => 'ro', isa => ArrayRef[ElastiCache_Event]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Events' => {
                             'class' => 'Paws::ElastiCache::Event',
                             'type' => 'ArrayRef[ElastiCache_Event]'
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

Paws::ElastiCache::EventsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[ElastiCache_Event]

A list of events. Each element in the list contains detailed
information about one event.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

