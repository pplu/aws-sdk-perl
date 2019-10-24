
package Paws::EC2::ModifyInstanceAttribute;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool Undef/;
  use Paws::EC2::Types qw/EC2_BlobAttributeValue EC2_InstanceBlockDeviceMappingSpecification EC2_AttributeValue EC2_AttributeBooleanValue/;
  has Attribute => (is => 'ro', isa => Str, predicate => 1);
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_InstanceBlockDeviceMappingSpecification], predicate => 1);
  has DisableApiTermination => (is => 'ro', isa => EC2_AttributeBooleanValue, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has EbsOptimized => (is => 'ro', isa => EC2_AttributeBooleanValue, predicate => 1);
  has EnaSupport => (is => 'ro', isa => EC2_AttributeBooleanValue, predicate => 1);
  has Groups => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => EC2_AttributeValue, predicate => 1);
  has InstanceType => (is => 'ro', isa => EC2_AttributeValue, predicate => 1);
  has Kernel => (is => 'ro', isa => EC2_AttributeValue, predicate => 1);
  has Ramdisk => (is => 'ro', isa => EC2_AttributeValue, predicate => 1);
  has SourceDestCheck => (is => 'ro', isa => EC2_AttributeBooleanValue, predicate => 1);
  has SriovNetSupport => (is => 'ro', isa => EC2_AttributeValue, predicate => 1);
  has UserData => (is => 'ro', isa => EC2_BlobAttributeValue, predicate => 1);
  has Value => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyInstanceAttribute');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Kernel' => {
                             'class' => 'Paws::EC2::AttributeValue',
                             'type' => 'EC2_AttributeValue'
                           },
               'SourceDestCheck' => {
                                      'class' => 'Paws::EC2::AttributeBooleanValue',
                                      'type' => 'EC2_AttributeBooleanValue'
                                    },
               'DisableApiTermination' => {
                                            'class' => 'Paws::EC2::AttributeBooleanValue',
                                            'type' => 'EC2_AttributeBooleanValue'
                                          },
               'SriovNetSupport' => {
                                      'class' => 'Paws::EC2::AttributeValue',
                                      'type' => 'EC2_AttributeValue'
                                    },
               'EnaSupport' => {
                                 'class' => 'Paws::EC2::AttributeBooleanValue',
                                 'type' => 'EC2_AttributeBooleanValue'
                               },
               'InstanceInitiatedShutdownBehavior' => {
                                                        'class' => 'Paws::EC2::AttributeValue',
                                                        'type' => 'EC2_AttributeValue'
                                                      },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'Value' => {
                            'type' => 'Str'
                          },
               'EbsOptimized' => {
                                   'class' => 'Paws::EC2::AttributeBooleanValue',
                                   'type' => 'EC2_AttributeBooleanValue'
                                 },
               'InstanceType' => {
                                   'class' => 'Paws::EC2::AttributeValue',
                                   'type' => 'EC2_AttributeValue'
                                 },
               'UserData' => {
                               'class' => 'Paws::EC2::BlobAttributeValue',
                               'type' => 'EC2_BlobAttributeValue'
                             },
               'Attribute' => {
                                'type' => 'Str'
                              },
               'Ramdisk' => {
                              'class' => 'Paws::EC2::AttributeValue',
                              'type' => 'EC2_AttributeValue'
                            },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::InstanceBlockDeviceMappingSpecification',
                                          'type' => 'ArrayRef[EC2_InstanceBlockDeviceMappingSpecification]'
                                        }
             },
  'NameInRequest' => {
                       'Groups' => 'GroupId',
                       'DryRun' => 'dryRun',
                       'Value' => 'value',
                       'InstanceId' => 'instanceId',
                       'InstanceType' => 'instanceType',
                       'EbsOptimized' => 'ebsOptimized',
                       'Kernel' => 'kernel',
                       'UserData' => 'userData',
                       'DisableApiTermination' => 'disableApiTermination',
                       'SriovNetSupport' => 'sriovNetSupport',
                       'Ramdisk' => 'ramdisk',
                       'Attribute' => 'attribute',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'EnaSupport' => 'enaSupport',
                       'InstanceInitiatedShutdownBehavior' => 'instanceInitiatedShutdownBehavior'
                     },
  'IsRequired' => {
                    'InstanceId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceAttribute - Arguments for method ModifyInstanceAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->ModifyInstanceAttribute(
      InstanceId          => 'MyString',
      Attribute           => 'instanceType',    # OPTIONAL
      BlockDeviceMappings => [
        {
          DeviceName => 'MyString',
          Ebs        => {
            DeleteOnTermination => 1,            # OPTIONAL
            VolumeId            => 'MyString',
          },    # OPTIONAL
          NoDevice    => 'MyString',
          VirtualName => 'MyString',
        },
        ...
      ],        # OPTIONAL
      DisableApiTermination => {
        Value => 1,    # OPTIONAL
      },    # OPTIONAL
      DryRun       => 1,    # OPTIONAL
      EbsOptimized => {
        Value => 1,         # OPTIONAL
      },    # OPTIONAL
      EnaSupport => {
        Value => 1,    # OPTIONAL
      },    # OPTIONAL
      Groups                            => [ 'MyString', ... ],       # OPTIONAL
      InstanceInitiatedShutdownBehavior => { Value => 'MyString', },  # OPTIONAL
      InstanceType                      => { Value => 'MyString', },  # OPTIONAL
      Kernel                            => { Value => 'MyString', },  # OPTIONAL
      Ramdisk                           => { Value => 'MyString', },  # OPTIONAL
      SourceDestCheck                   => {
        Value => 1,                                                   # OPTIONAL
      },    # OPTIONAL
      SriovNetSupport => { Value => 'MyString', },    # OPTIONAL
      UserData => {
        Value => 'BlobBlob',                          # OPTIONAL
      },    # OPTIONAL
      Value => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceAttribute>

=head1 ATTRIBUTES


=head2 Attribute => Str

The name of the attribute.

Valid values are: C<"instanceType">, C<"kernel">, C<"ramdisk">, C<"userData">, C<"disableApiTermination">, C<"instanceInitiatedShutdownBehavior">, C<"rootDeviceName">, C<"blockDeviceMapping">, C<"productCodes">, C<"sourceDestCheck">, C<"groupSet">, C<"ebsOptimized">, C<"sriovNetSupport">, C<"enaSupport">

=head2 BlockDeviceMappings => ArrayRef[EC2_InstanceBlockDeviceMappingSpecification]

Modifies the C<DeleteOnTermination> attribute for volumes that are
currently attached. The volume must be owned by the caller. If no value
is specified for C<DeleteOnTermination>, the default is C<true> and the
volume is deleted when the instance is terminated.

To add instance store volumes to an Amazon EBS-backed instance, you
must add them when you launch the instance. For more information, see
Updating the Block Device Mapping when Launching an Instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 DisableApiTermination => EC2_AttributeBooleanValue

If the value is C<true>, you can't terminate the instance using the
Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use
this parameter for Spot Instances.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EbsOptimized => EC2_AttributeBooleanValue

Specifies whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal EBS I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS Optimized instance.



=head2 EnaSupport => EC2_AttributeBooleanValue

Set to C<true> to enable enhanced networking with ENA for the instance.

This option is supported only for HVM instances. Specifying this option
with a PV instance can make it unreachable.



=head2 Groups => ArrayRef[Str|Undef]

[EC2-VPC] Changes the security groups of the instance. You must specify
at least one security group, even if it's just the default security
group for the VPC. You must specify the security group ID, not the
security group name.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 InstanceInitiatedShutdownBehavior => EC2_AttributeValue

Specifies whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).



=head2 InstanceType => EC2_AttributeValue

Changes the instance type to the specified value. For more information,
see Instance Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).
If the instance type is not valid, the error returned is
C<InvalidInstanceAttributeValue>.



=head2 Kernel => EC2_AttributeValue

Changes the instance's kernel to the specified value. We recommend that
you use PV-GRUB instead of kernels and RAM disks. For more information,
see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).



=head2 Ramdisk => EC2_AttributeValue

Changes the instance's RAM disk to the specified value. We recommend
that you use PV-GRUB instead of kernels and RAM disks. For more
information, see PV-GRUB
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).



=head2 SourceDestCheck => EC2_AttributeBooleanValue

Specifies whether source/destination checking is enabled. A value of
C<true> means that checking is enabled, and C<false> means that
checking is disabled. This value must be C<false> for a NAT instance to
perform NAT.



=head2 SriovNetSupport => EC2_AttributeValue

Set to C<simple> to enable enhanced networking with the Intel 82599
Virtual Function interface for the instance.

There is no way to disable enhanced networking with the Intel 82599
Virtual Function interface at this time.

This option is supported only for HVM instances. Specifying this option
with a PV instance can make it unreachable.



=head2 UserData => EC2_BlobAttributeValue

Changes the instance's user data to the specified value. If you are
using an AWS SDK or command line tool, base64-encoding is performed for
you, and you can load the text from a file. Otherwise, you must provide
base64-encoded text.



=head2 Value => Str

A new value for the attribute. Use only with the C<kernel>, C<ramdisk>,
C<userData>, C<disableApiTermination>, or
C<instanceInitiatedShutdownBehavior> attribute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

