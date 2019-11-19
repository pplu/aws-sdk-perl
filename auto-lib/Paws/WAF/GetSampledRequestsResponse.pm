# Generated from json/callresult_class.tt

package Paws::WAF::GetSampledRequestsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::WAF::Types qw/WAF_SampledHTTPRequest WAF_TimeWindow/;
  has PopulationSize => (is => 'ro', isa => Int);
  has SampledRequests => (is => 'ro', isa => ArrayRef[WAF_SampledHTTPRequest]);
  has TimeWindow => (is => 'ro', isa => WAF_TimeWindow);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PopulationSize' => {
                                     'type' => 'Int'
                                   },
               'TimeWindow' => {
                                 'type' => 'WAF_TimeWindow',
                                 'class' => 'Paws::WAF::TimeWindow'
                               },
               'SampledRequests' => {
                                      'type' => 'ArrayRef[WAF_SampledHTTPRequest]',
                                      'class' => 'Paws::WAF::SampledHTTPRequest'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetSampledRequestsResponse

=head1 ATTRIBUTES


=head2 PopulationSize => Int

The total number of requests from which C<GetSampledRequests> got a
sample of C<MaxItems> requests. If C<PopulationSize> is less than
C<MaxItems>, the sample includes every request that your AWS resource
received during the specified time range.


=head2 SampledRequests => ArrayRef[WAF_SampledHTTPRequest]

A complex type that contains detailed information about each of the
requests in the sample.


=head2 TimeWindow => WAF_TimeWindow

Usually, C<TimeWindow> is the time range that you specified in the
C<GetSampledRequests> request. However, if your AWS resource received
more than 5,000 requests during the time range that you specified in
the request, C<GetSampledRequests> returns the time range for the first
5,000 requests.


=head2 _request_id => Str


=cut

1;