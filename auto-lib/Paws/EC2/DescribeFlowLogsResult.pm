
package Paws::EC2::DescribeFlowLogsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_FlowLog/;
  has FlowLogs => (is => 'ro', isa => ArrayRef[EC2_FlowLog]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'FlowLogs' => {
                               'class' => 'Paws::EC2::FlowLog',
                               'type' => 'ArrayRef[EC2_FlowLog]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'FlowLogs' => 'flowLogSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFlowLogsResult

=head1 ATTRIBUTES


=head2 FlowLogs => ArrayRef[EC2_FlowLog]

Information about the flow logs.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

