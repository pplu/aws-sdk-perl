
package Paws::EC2::DescribeNetworkInterfaceAttributeResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Attachment => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfaceAttributeResult

=head1 ATTRIBUTES

=head2 Attachment => Paws::EC2::NetworkInterfaceAttachment

  

The attachment (if any) of the network interface.









=head2 Description => Paws::EC2::AttributeValue

  

The description of the network interface.









=head2 Groups => ArrayRef[Paws::EC2::GroupIdentifier]

  

The security groups associated with the network interface.









=head2 NetworkInterfaceId => Str

  

The ID of the network interface.









=head2 SourceDestCheck => Paws::EC2::AttributeBooleanValue

  

Indicates whether source/destination checking is enabled.











=cut

