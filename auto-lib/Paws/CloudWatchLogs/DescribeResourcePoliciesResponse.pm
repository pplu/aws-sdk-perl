# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeResourcePoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_ResourcePolicy/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourcePolicies => (is => 'ro', isa => ArrayRef[CloudWatchLogs_ResourcePolicy]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourcePolicies' => 'resourcePolicies',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ResourcePolicies' => {
                                       'class' => 'Paws::CloudWatchLogs::ResourcePolicy',
                                       'type' => 'ArrayRef[CloudWatchLogs_ResourcePolicy]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeResourcePoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ResourcePolicies => ArrayRef[CloudWatchLogs_ResourcePolicy]

The resource policies that exist in this account.


=head2 _request_id => Str


=cut

1;