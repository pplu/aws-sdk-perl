
package Paws::EC2::DescribeNetworkInterfacePermissionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_NetworkInterfacePermission/;
  has NetworkInterfacePermissions => (is => 'ro', isa => ArrayRef[EC2_NetworkInterfacePermission]);
  has NextToken => (is => 'ro', isa => Str);

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
               'NetworkInterfacePermissions' => {
                                                  'class' => 'Paws::EC2::NetworkInterfacePermission',
                                                  'type' => 'ArrayRef[EC2_NetworkInterfacePermission]'
                                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'NetworkInterfacePermissions' => 'networkInterfacePermissions'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfacePermissionsResult

=head1 ATTRIBUTES


=head2 NetworkInterfacePermissions => ArrayRef[EC2_NetworkInterfacePermission]

The network interface permissions.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

