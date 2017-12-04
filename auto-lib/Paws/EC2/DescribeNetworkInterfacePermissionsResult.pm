
package Paws::EC2::DescribeNetworkInterfacePermissionsResult;
  use Moose;
  has NetworkInterfacePermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterfacePermission]', request_name => 'networkInterfacePermissions', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfacePermissionsResult

=head1 ATTRIBUTES


=head2 NetworkInterfacePermissions => ArrayRef[L<Paws::EC2::NetworkInterfacePermission>]

The network interface permissions.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

