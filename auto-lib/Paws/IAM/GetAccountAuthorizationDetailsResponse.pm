
package Paws::IAM::GetAccountAuthorizationDetailsResponse;
  use Moose;
  has GroupDetailList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::GroupDetail]');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::IAM::ManagedPolicyDetail]');
  has RoleDetailList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::RoleDetail]');
  has UserDetailList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::UserDetail]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetAccountAuthorizationDetailsResponse

=head1 ATTRIBUTES


=head2 GroupDetailList => ArrayRef[L<Paws::IAM::GroupDetail>]

A list containing information about IAM groups.


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 Policies => ArrayRef[L<Paws::IAM::ManagedPolicyDetail>]

A list containing information about managed policies.


=head2 RoleDetailList => ArrayRef[L<Paws::IAM::RoleDetail>]

A list containing information about IAM roles.


=head2 UserDetailList => ArrayRef[L<Paws::IAM::UserDetail>]

A list containing information about IAM users.


=head2 _request_id => Str


=cut

