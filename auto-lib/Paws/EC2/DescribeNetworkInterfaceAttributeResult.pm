
package Paws::EC2::DescribeNetworkInterfaceAttributeResult;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAttachment', request_name => 'attachment', traits => ['NameInRequest',]);
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'description', traits => ['NameInRequest',]);
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest',]);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest',]);
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'sourceDestCheck', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfaceAttributeResult

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::EC2::NetworkInterfaceAttachment>

The attachment (if any) of the network interface.


=head2 Description => L<Paws::EC2::AttributeValue>

The description of the network interface.


=head2 Groups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

The security groups associated with the network interface.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>

Indicates whether source/destination checking is enabled.


=head2 _request_id => Str


=cut

