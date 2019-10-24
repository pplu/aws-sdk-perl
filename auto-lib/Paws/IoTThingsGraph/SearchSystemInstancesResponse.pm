# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::SearchSystemInstancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemInstanceSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Summaries => (is => 'ro', isa => ArrayRef[IoTThingsGraph_SystemInstanceSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Summaries' => {
                                'class' => 'Paws::IoTThingsGraph::SystemInstanceSummary',
                                'type' => 'ArrayRef[IoTThingsGraph_SystemInstanceSummary]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Summaries' => 'summaries',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchSystemInstancesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 Summaries => ArrayRef[IoTThingsGraph_SystemInstanceSummary]

An array of objects that contain summary data abour the system
instances in the result set.


=head2 _request_id => Str


=cut

1;