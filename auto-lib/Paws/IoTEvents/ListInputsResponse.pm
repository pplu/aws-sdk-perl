
package Paws::IoTEvents::ListInputsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEvents::Types qw/IoTEvents_InputSummary/;
  has InputSummaries => (is => 'ro', isa => ArrayRef[IoTEvents_InputSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'InputSummaries' => {
                                     'class' => 'Paws::IoTEvents::InputSummary',
                                     'type' => 'ArrayRef[IoTEvents_InputSummary]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'InputSummaries' => 'inputSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListInputsResponse

=head1 ATTRIBUTES


=head2 InputSummaries => ArrayRef[IoTEvents_InputSummary]

Summary information about the inputs.


=head2 NextToken => Str

A token to retrieve the next set of results, or C<null> if there are no
additional results.


=head2 _request_id => Str


=cut

