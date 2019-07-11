
package Paws::FMS::GetProtectionStatusResponse;
  use Moose;
  has AdminAccountId => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetProtectionStatusResponse

=head1 ATTRIBUTES


=head2 AdminAccountId => Str

The ID of the AWS Firewall administrator account for this policy.


=head2 Data => Str

Details about the attack, including the following:

=over

=item *

Attack type

=item *

Account ID

=item *

ARN of the resource attacked

=item *

Start time of the attack

=item *

End time of the attack (ongoing attacks will not have an end time)

=back

The details are in JSON format. An example is shown in the Examples
section below.


=head2 NextToken => Str

If you have more objects than the number that you specified for
C<MaxResults> in the request, the response includes a C<NextToken>
value. To list more objects, submit another C<GetProtectionStatus>
request, and specify the C<NextToken> value from the response in the
C<NextToken> value in the next request.

AWS SDKs provide auto-pagination that identify C<NextToken> in a
response and make subsequent request calls automatically on your
behalf. However, this feature is not supported by
C<GetProtectionStatus>. You must submit subsequent requests with
C<NextToken> using your own processes.


=head2 ServiceType => Str

The service type that is protected by the policy. Currently, this is
always C<SHIELD_ADVANCED>.

Valid values are: C<"WAF">, C<"SHIELD_ADVANCED">
=head2 _request_id => Str


=cut

1;