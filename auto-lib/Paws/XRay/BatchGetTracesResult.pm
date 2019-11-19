
package Paws::XRay::BatchGetTracesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::XRay::Types qw/XRay_Trace/;
  has NextToken => (is => 'ro', isa => Str);
  has Traces => (is => 'ro', isa => ArrayRef[XRay_Trace]);
  has UnprocessedTraceIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Traces' => {
                             'class' => 'Paws::XRay::Trace',
                             'type' => 'ArrayRef[XRay_Trace]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UnprocessedTraceIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::BatchGetTracesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.


=head2 Traces => ArrayRef[XRay_Trace]

Full traces for the specified requests.


=head2 UnprocessedTraceIds => ArrayRef[Str|Undef]

Trace IDs of requests that haven't been processed.


=head2 _request_id => Str


=cut

