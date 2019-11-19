
package Paws::Lambda::ListEventSourceMappingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lambda::Types qw/Lambda_EventSourceMappingConfiguration/;
  has EventSourceMappings => (is => 'ro', isa => ArrayRef[Lambda_EventSourceMappingConfiguration]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventSourceMappings' => {
                                          'type' => 'ArrayRef[Lambda_EventSourceMappingConfiguration]',
                                          'class' => 'Paws::Lambda::EventSourceMappingConfiguration'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
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

Paws::Lambda::ListEventSourceMappingsResponse

=head1 ATTRIBUTES


=head2 EventSourceMappings => ArrayRef[Lambda_EventSourceMappingConfiguration]

A list of event source mappings.


=head2 NextMarker => Str

A pagination token that's returned when the response doesn't contain
all event source mappings.


=head2 _request_id => Str


=cut

