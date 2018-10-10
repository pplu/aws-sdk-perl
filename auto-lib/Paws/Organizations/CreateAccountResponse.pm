
package Paws::Organizations::CreateAccountResponse;
  use Moose;
  has CreateAccountStatus => (is => 'ro', isa => 'Paws::Organizations::CreateAccountStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateAccountResponse

=head1 ATTRIBUTES


=head2 CreateAccountStatus => L<Paws::Organizations::CreateAccountStatus>

A structure that contains details about the request to create an
account. This response structure might not be fully populated when you
first receive it because account creation is an asynchronous process.
You can pass the returned C<CreateAccountStatus> ID as a parameter to
DescribeCreateAccountStatus to get status about the progress of the
request at later times. You can also check the AWS CloudTrail log for
the C<CreateAccountResult> event. For more information, see Monitoring
the Activity in Your Organization
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html)
in the I<AWS Organizations User Guide>.


=head2 _request_id => Str


=cut

1;