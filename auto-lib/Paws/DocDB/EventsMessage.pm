# Generated from callresult_class.tt

package Paws::DocDB::EventsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_Event/;
  has Events => (is => 'ro', isa => ArrayRef[DocDB_Event]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Events' => {
                             'class' => 'Paws::DocDB::Event',
                             'type' => 'ArrayRef[DocDB_Event]'
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

Paws::DocDB::EventsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[DocDB_Event]

Detailed information about one or more events.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

