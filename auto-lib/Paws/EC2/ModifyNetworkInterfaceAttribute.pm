
package Paws::EC2::ModifyNetworkInterfaceAttribute;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_NetworkInterfaceAttachmentChanges EC2_AttributeValue EC2_AttributeBooleanValue/;
  has Attachment => (is => 'ro', isa => EC2_NetworkInterfaceAttachmentChanges, predicate => 1);
  has Description => (is => 'ro', isa => EC2_AttributeValue, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Groups => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has NetworkInterfaceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceDestCheck => (is => 'ro', isa => EC2_AttributeBooleanValue, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyNetworkInterfaceAttribute');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceDestCheck' => {
                                      'class' => 'Paws::EC2::AttributeBooleanValue',
                                      'type' => 'EC2_AttributeBooleanValue'
                                    },
               'Groups' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'Attachment' => {
                                 'class' => 'Paws::EC2::NetworkInterfaceAttachmentChanges',
                                 'type' => 'EC2_NetworkInterfaceAttachmentChanges'
                               },
               'Description' => {
                                  'class' => 'Paws::EC2::AttributeValue',
                                  'type' => 'EC2_AttributeValue'
                                }
             },
  'NameInRequest' => {
                       'SourceDestCheck' => 'sourceDestCheck',
                       'Groups' => 'SecurityGroupId',
                       'DryRun' => 'dryRun',
                       'NetworkInterfaceId' => 'networkInterfaceId',
                       'Attachment' => 'attachment',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'NetworkInterfaceId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyNetworkInterfaceAttribute - Arguments for method ModifyNetworkInterfaceAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyNetworkInterfaceAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyNetworkInterfaceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyNetworkInterfaceAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To modify the attachment attribute of a network interface
    # This example modifies the attachment attribute of the specified network
    # interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'Attachment' => {
        'AttachmentId'        => 'eni-attach-43348162',
        'DeleteOnTermination' => 0
      },
      'NetworkInterfaceId' => 'eni-686ea200'
    );

    # To modify the description attribute of a network interface
    # This example modifies the description attribute of the specified network
    # interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'Description' => {
        'Value' => 'My description'
      },
      'NetworkInterfaceId' => 'eni-686ea200'
    );

    # To modify the groupSet attribute of a network interface
    # This example command modifies the groupSet attribute of the specified
    # network interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'Groups'             => [ 'sg-903004f8', 'sg-1a2b3c4d' ],
      'NetworkInterfaceId' => 'eni-686ea200'
    );

    # To modify the sourceDestCheck attribute of a network interface
    # This example command modifies the sourceDestCheck attribute of the
    # specified network interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'NetworkInterfaceId' => 'eni-686ea200',
      'SourceDestCheck'    => {
        'Value' => 0
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyNetworkInterfaceAttribute>

=head1 ATTRIBUTES


=head2 Attachment => EC2_NetworkInterfaceAttachmentChanges

Information about the interface attachment. If modifying the 'delete on
termination' attribute, you must specify the ID of the interface
attachment.



=head2 Description => EC2_AttributeValue

A description for the network interface.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Groups => ArrayRef[Str|Undef]

Changes the security groups for the network interface. The new set of
groups you specify replaces the current set. You must specify at least
one group, even if it's just the default security group in the VPC. You
must specify the ID of the security group, not the name.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the network interface.



=head2 SourceDestCheck => EC2_AttributeBooleanValue

Indicates whether source/destination checking is enabled. A value of
C<true> means checking is enabled, and C<false> means checking is
disabled. This value must be C<false> for a NAT instance to perform
NAT. For more information, see NAT Instances
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html)
in the I<Amazon Virtual Private Cloud User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyNetworkInterfaceAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

