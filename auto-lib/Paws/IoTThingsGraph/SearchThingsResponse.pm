# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::SearchThingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_Thing/;
  has NextToken => (is => 'ro', isa => Str);
  has Things => (is => 'ro', isa => ArrayRef[IoTThingsGraph_Thing]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Things' => {
                             'type' => 'ArrayRef[IoTThingsGraph_Thing]',
                             'class' => 'Paws::IoTThingsGraph::Thing'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Things' => 'things',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchThingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 Things => ArrayRef[IoTThingsGraph_Thing]

An array of things in the result set.


=head2 _request_id => Str


=cut

1;