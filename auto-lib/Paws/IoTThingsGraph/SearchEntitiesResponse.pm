# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::SearchEntitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_EntityDescription/;
  has Descriptions => (is => 'ro', isa => ArrayRef[IoTThingsGraph_EntityDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Descriptions' => {
                                   'class' => 'Paws::IoTThingsGraph::EntityDescription',
                                   'type' => 'ArrayRef[IoTThingsGraph_EntityDescription]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Descriptions' => 'descriptions'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchEntitiesResponse

=head1 ATTRIBUTES


=head2 Descriptions => ArrayRef[IoTThingsGraph_EntityDescription]

An array of descriptions for each entity returned in the search result.


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 _request_id => Str


=cut

1;