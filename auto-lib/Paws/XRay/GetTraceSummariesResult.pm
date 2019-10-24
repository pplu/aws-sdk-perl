
package Paws::XRay::GetTraceSummariesResult;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::XRay::Types qw/XRay_TraceSummary/;
  has ApproximateTime => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has TracesProcessedCount => (is => 'ro', isa => Int);
  has TraceSummaries => (is => 'ro', isa => ArrayRef[XRay_TraceSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TraceSummaries' => {
                                     'class' => 'Paws::XRay::TraceSummary',
                                     'type' => 'ArrayRef[XRay_TraceSummary]'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TracesProcessedCount' => {
                                           'type' => 'Int'
                                         },
               'ApproximateTime' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
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

Paws::XRay::GetTraceSummariesResult

=head1 ATTRIBUTES


=head2 ApproximateTime => Str

The start time of this page of results.


=head2 NextToken => Str

If the requested time frame contained more than one page of results,
you can use this token to retrieve the next page. The first page
contains the most most recent results, closest to the end of the time
frame.


=head2 TracesProcessedCount => Int

The total number of traces processed, including traces that did not
match the specified filter expression.


=head2 TraceSummaries => ArrayRef[XRay_TraceSummary]

Trace IDs and metadata for traces that were found in the specified time
frame.


=head2 _request_id => Str


=cut

