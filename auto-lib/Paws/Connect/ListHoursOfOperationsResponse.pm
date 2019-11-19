
package Paws::Connect::ListHoursOfOperationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_HoursOfOperationSummary/;
  has HoursOfOperationSummaryList => (is => 'ro', isa => ArrayRef[Connect_HoursOfOperationSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HoursOfOperationSummaryList' => {
                                                  'class' => 'Paws::Connect::HoursOfOperationSummary',
                                                  'type' => 'ArrayRef[Connect_HoursOfOperationSummary]'
                                                },
               'NextToken' => {
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

Paws::Connect::ListHoursOfOperationsResponse

=head1 ATTRIBUTES


=head2 HoursOfOperationSummaryList => ArrayRef[Connect_HoursOfOperationSummary]

Information about the hours of operation.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

