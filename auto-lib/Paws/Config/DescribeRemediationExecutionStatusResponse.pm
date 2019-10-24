# Generated from json/callresult_class.tt

package Paws::Config::DescribeRemediationExecutionStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_RemediationExecutionStatus/;
  has NextToken => (is => 'ro', isa => Str);
  has RemediationExecutionStatuses => (is => 'ro', isa => ArrayRef[Config_RemediationExecutionStatus]);

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
               'RemediationExecutionStatuses' => {
                                                   'class' => 'Paws::Config::RemediationExecutionStatus',
                                                   'type' => 'ArrayRef[Config_RemediationExecutionStatus]'
                                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationExecutionStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 RemediationExecutionStatuses => ArrayRef[Config_RemediationExecutionStatus]

Returns a list of remediation execution statuses objects.


=head2 _request_id => Str


=cut

1;