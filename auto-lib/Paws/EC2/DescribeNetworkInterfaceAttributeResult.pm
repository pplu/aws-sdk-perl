
package Paws::EC2::DescribeNetworkInterfaceAttributeResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_NetworkInterfaceAttachment EC2_GroupIdentifier EC2_AttributeBooleanValue EC2_AttributeValue/;
  has Attachment => (is => 'ro', isa => EC2_NetworkInterfaceAttachment);
  has Description => (is => 'ro', isa => EC2_AttributeValue);
  has Groups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has SourceDestCheck => (is => 'ro', isa => EC2_AttributeBooleanValue);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attachment' => {
                                 'type' => 'EC2_NetworkInterfaceAttachment',
                                 'class' => 'Paws::EC2::NetworkInterfaceAttachment'
                               },
               'Groups' => {
                             'class' => 'Paws::EC2::GroupIdentifier',
                             'type' => 'ArrayRef[EC2_GroupIdentifier]'
                           },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'class' => 'Paws::EC2::AttributeValue',
                                  'type' => 'EC2_AttributeValue'
                                },
               'SourceDestCheck' => {
                                      'class' => 'Paws::EC2::AttributeBooleanValue',
                                      'type' => 'EC2_AttributeBooleanValue'
                                    }
             },
  'NameInRequest' => {
                       'Groups' => 'groupSet',
                       'Attachment' => 'attachment',
                       'Description' => 'description',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'SourceDestCheck' => 'sourceDestCheck'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfaceAttributeResult

=head1 ATTRIBUTES


=head2 Attachment => EC2_NetworkInterfaceAttachment

The attachment (if any) of the network interface.


=head2 Description => EC2_AttributeValue

The description of the network interface.


=head2 Groups => ArrayRef[EC2_GroupIdentifier]

The security groups associated with the network interface.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 SourceDestCheck => EC2_AttributeBooleanValue

Indicates whether source/destination checking is enabled.


=head2 _request_id => Str


=cut

