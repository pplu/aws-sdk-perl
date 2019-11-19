# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeUsageReportSubscriptionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_UsageReportSubscription/;
  has NextToken => (is => 'ro', isa => Str);
  has UsageReportSubscriptions => (is => 'ro', isa => ArrayRef[AppStream_UsageReportSubscription]);

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
               'UsageReportSubscriptions' => {
                                               'class' => 'Paws::AppStream::UsageReportSubscription',
                                               'type' => 'ArrayRef[AppStream_UsageReportSubscription]'
                                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeUsageReportSubscriptionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 UsageReportSubscriptions => ArrayRef[AppStream_UsageReportSubscription]

Information about the usage report subscription.


=head2 _request_id => Str


=cut

1;