# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::SearchSystemTemplatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemTemplateSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Summaries => (is => 'ro', isa => ArrayRef[IoTThingsGraph_SystemTemplateSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Summaries' => 'summaries'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Summaries' => {
                                'class' => 'Paws::IoTThingsGraph::SystemTemplateSummary',
                                'type' => 'ArrayRef[IoTThingsGraph_SystemTemplateSummary]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchSystemTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 Summaries => ArrayRef[IoTThingsGraph_SystemTemplateSummary]

An array of objects that contain summary information about each system
deployment in the result set.


=head2 _request_id => Str


=cut

1;