# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeQueriesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_QueryInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has Queries => (is => 'ro', isa => ArrayRef[CloudWatchLogs_QueryInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Queries' => 'queries'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Queries' => {
                              'class' => 'Paws::CloudWatchLogs::QueryInfo',
                              'type' => 'ArrayRef[CloudWatchLogs_QueryInfo]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeQueriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Queries => ArrayRef[CloudWatchLogs_QueryInfo]

The list of queries that match the request.


=head2 _request_id => Str


=cut

1;