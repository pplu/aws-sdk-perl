# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeLogStreamsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_LogStream/;
  has LogStreams => (is => 'ro', isa => ArrayRef[CloudWatchLogs_LogStream]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'LogStreams' => 'logStreams'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LogStreams' => {
                                 'class' => 'Paws::CloudWatchLogs::LogStream',
                                 'type' => 'ArrayRef[CloudWatchLogs_LogStream]'
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

Paws::CloudWatchLogs::DescribeLogStreamsResponse

=head1 ATTRIBUTES


=head2 LogStreams => ArrayRef[CloudWatchLogs_LogStream]

The log streams.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;