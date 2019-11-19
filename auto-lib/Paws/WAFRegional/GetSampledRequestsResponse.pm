# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetSampledRequestsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_TimeWindow WAFRegional_SampledHTTPRequest/;
  has PopulationSize => (is => 'ro', isa => Int);
  has SampledRequests => (is => 'ro', isa => ArrayRef[WAFRegional_SampledHTTPRequest]);
  has TimeWindow => (is => 'ro', isa => WAFRegional_TimeWindow);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimeWindow' => {
                                 'type' => 'WAFRegional_TimeWindow',
                                 'class' => 'Paws::WAFRegional::TimeWindow'
                               },
               'PopulationSize' => {
                                     'type' => 'Int'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SampledRequests' => {
                                      'type' => 'ArrayRef[WAFRegional_SampledHTTPRequest]',
                                      'class' => 'Paws::WAFRegional::SampledHTTPRequest'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetSampledRequestsResponse

=head1 ATTRIBUTES


=head2 PopulationSize => Int

The total number of requests from which C<GetSampledRequests> got a
sample of C<MaxItems> requests. If C<PopulationSize> is less than
C<MaxItems>, the sample includes every request that your AWS resource
received during the specified time range.


=head2 SampledRequests => ArrayRef[WAFRegional_SampledHTTPRequest]

A complex type that contains detailed information about each of the
requests in the sample.


=head2 TimeWindow => WAFRegional_TimeWindow

Usually, C<TimeWindow> is the time range that you specified in the
C<GetSampledRequests> request. However, if your AWS resource received
more than 5,000 requests during the time range that you specified in
the request, C<GetSampledRequests> returns the time range for the first
5,000 requests.


=head2 _request_id => Str


=cut

1;