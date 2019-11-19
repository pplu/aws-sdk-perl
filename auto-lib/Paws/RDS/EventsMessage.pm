# Generated from callresult_class.tt

package Paws::RDS::EventsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_Event/;
  has Events => (is => 'ro', isa => ArrayRef[RDS_Event]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Events' => 'Event'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Events' => {
                             'class' => 'Paws::RDS::Event',
                             'type' => 'ArrayRef[RDS_Event]'
                           },
               'Marker' => {
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

Paws::RDS::EventsMessage

=head1 ATTRIBUTES


=head2 Events => ArrayRef[RDS_Event]

A list of C<Event> instances.


=head2 Marker => Str

An optional pagination token provided by a previous Events request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by C<MaxRecords> .


=head2 _request_id => Str


=cut

