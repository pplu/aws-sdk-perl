# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeLogGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_LogGroup/;
  has LogGroups => (is => 'ro', isa => ArrayRef[CloudWatchLogs_LogGroup]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogGroups' => {
                                'class' => 'Paws::CloudWatchLogs::LogGroup',
                                'type' => 'ArrayRef[CloudWatchLogs_LogGroup]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LogGroups' => 'logGroups',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeLogGroupsResponse

=head1 ATTRIBUTES


=head2 LogGroups => ArrayRef[CloudWatchLogs_LogGroup]

The log groups.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;