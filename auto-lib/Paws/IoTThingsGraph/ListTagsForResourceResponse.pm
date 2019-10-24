# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[IoTThingsGraph_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::IoTThingsGraph::Tag',
                           'type' => 'ArrayRef[IoTThingsGraph_Tag]'
                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that specifies the next page of results to return.


=head2 Tags => ArrayRef[IoTThingsGraph_Tag]

List of tags returned by the C<ListTagsForResource> operation.


=head2 _request_id => Str


=cut

1;