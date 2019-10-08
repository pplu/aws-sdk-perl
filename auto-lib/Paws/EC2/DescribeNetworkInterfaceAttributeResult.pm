
package Paws::EC2::DescribeNetworkInterfaceAttributeResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_GroupIdentifier EC2_NetworkInterfaceAttachment EC2_AttributeValue EC2_AttributeBooleanValue/;
  has Attachment => (is => 'ro', isa => EC2_NetworkInterfaceAttachment);
  has Description => (is => 'ro', isa => EC2_AttributeValue);
  has Groups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has SourceDestCheck => (is => 'ro', isa => EC2_AttributeBooleanValue);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceDestCheck' => {
                                      'class' => 'Paws::EC2::AttributeBooleanValue',
                                      'type' => 'EC2_AttributeBooleanValue'
                                    },
               'Groups' => {
                             'class' => 'Paws::EC2::GroupIdentifier',
                             'type' => 'ArrayRef[EC2_GroupIdentifier]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'Attachment' => {
                                 'class' => 'Paws::EC2::NetworkInterfaceAttachment',
                                 'type' => 'EC2_NetworkInterfaceAttachment'
                               },
               'Description' => {
                                  'class' => 'Paws::EC2::AttributeValue',
                                  'type' => 'EC2_AttributeValue'
                                }
             },
  'NameInRequest' => {
                       'SourceDestCheck' => 'sourceDestCheck',
                       'Groups' => 'groupSet',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'Attachment' => 'attachment',
                       'Description' => 'description'
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

