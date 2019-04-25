
package Paws::EC2::RegisterImage;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'architecture' );
  has BillingProducts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'BillingProduct' );
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EnaSupport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enaSupport' );
  has ImageLocation => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kernelId' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ramdiskId' );
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rootDeviceName' );
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sriovNetSupport' );
  has VirtualizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualizationType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RegisterImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RegisterImage - Arguments for method RegisterImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RegisterImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $RegisterImageResult = $ec2->RegisterImage(
      Name                => 'MyString',
      Architecture        => 'i386',                 # OPTIONAL
      BillingProducts     => [ 'MyString', ... ],    # OPTIONAL
      BlockDeviceMappings => [
        {
          DeviceName => 'MyString',
          Ebs        => {
            DeleteOnTermination => 1,                # OPTIONAL
            Encrypted           => 1,                # OPTIONAL
            Iops                => 1,                # OPTIONAL
            KmsKeyId            => 'MyString',
            SnapshotId          => 'MyString',
            VolumeSize          => 1,                # OPTIONAL
            VolumeType =>
              'standard',    # values: standard, io1, gp2, sc1, st1; OPTIONAL
          },    # OPTIONAL
          NoDevice    => 'MyString',
          VirtualName => 'MyString',
        },
        ...
      ],        # OPTIONAL
      Description        => 'MyString',    # OPTIONAL
      DryRun             => 1,             # OPTIONAL
      EnaSupport         => 1,             # OPTIONAL
      ImageLocation      => 'MyString',    # OPTIONAL
      KernelId           => 'MyString',    # OPTIONAL
      RamdiskId          => 'MyString',    # OPTIONAL
      RootDeviceName     => 'MyString',    # OPTIONAL
      SriovNetSupport    => 'MyString',    # OPTIONAL
      VirtualizationType => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ImageId = $RegisterImageResult->ImageId;

    # Returns a L<Paws::EC2::RegisterImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RegisterImage>

=head1 ATTRIBUTES


=head2 Architecture => Str

The architecture of the AMI.

Default: For Amazon EBS-backed AMIs, C<i386>. For instance store-backed
AMIs, the architecture specified in the manifest file.

Valid values are: C<"i386">, C<"x86_64">, C<"arm64">

=head2 BillingProducts => ArrayRef[Str|Undef]

The billing product codes. Your account must be authorized to specify
billing product codes. Otherwise, you can use the AWS Marketplace to
bill for the use of an AMI.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

One or more block device mapping entries.



=head2 Description => Str

A description for your AMI.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EnaSupport => Bool

Set to C<true> to enable enhanced networking with ENA for the AMI and
any instances that you launch from the AMI.

This option is supported only for HVM AMIs. Specifying this option with
a PV AMI can make instances launched from the AMI unreachable.



=head2 ImageLocation => Str

The full path to your AMI manifest in Amazon S3 storage.



=head2 KernelId => Str

The ID of the kernel.



=head2 B<REQUIRED> Name => Str

A name for your AMI.

Constraints: 3-128 alphanumeric characters, parentheses (()), square
brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single
quotes ('), at-signs (@), or underscores(_)



=head2 RamdiskId => Str

The ID of the RAM disk.



=head2 RootDeviceName => Str

The device name of the root device volume (for example, C</dev/sda1>).



=head2 SriovNetSupport => Str

Set to C<simple> to enable enhanced networking with the Intel 82599
Virtual Function interface for the AMI and any instances that you
launch from the AMI.

There is no way to disable C<sriovNetSupport> at this time.

This option is supported only for HVM AMIs. Specifying this option with
a PV AMI can make instances launched from the AMI unreachable.



=head2 VirtualizationType => Str

The type of virtualization (C<hvm> | C<paravirtual>).

Default: C<paravirtual>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

