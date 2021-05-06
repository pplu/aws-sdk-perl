
package Paws::CloudWatchLogs::DescribeResourcePoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourcePolicies => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::ResourcePolicy]', traits => ['NameInRequest'], request_name => 'resourcePolicies' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeResourcePoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ResourcePolicies => ArrayRef[L<Paws::CloudWatchLogs::ResourcePolicy>]

The resource policies that exist in this account.


=head2 _request_id => Str


=cut

1;