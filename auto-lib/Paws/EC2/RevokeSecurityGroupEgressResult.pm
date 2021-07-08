
package Paws::EC2::RevokeSecurityGroupEgressResult;
  use Moose;
  has Return => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);
  has UnknownIpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]', request_name => 'unknownIpPermissionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RevokeSecurityGroupEgressResult

=head1 ATTRIBUTES


=head2 Return => Bool

Returns C<true> if the request succeeds; otherwise, returns an error.


=head2 UnknownIpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

The outbound rules that were unknown to the service. In some cases,
C<unknownIpPermissionSet> might be in a different format from the
request parameter.


=head2 _request_id => Str


=cut

