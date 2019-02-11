
package Paws::EC2::CreateImage;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'blockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NoReboot => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'noReboot' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateImage - Arguments for method CreateImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateImageResult = $ec2->CreateImage(
      InstanceId          => 'MyString',
      Name                => 'MyString',
      BlockDeviceMappings => [
        {
          DeviceName => 'MyString',
          Ebs        => {
            DeleteOnTermination => 1,            # OPTIONAL
            Encrypted           => 1,            # OPTIONAL
            Iops                => 1,            # OPTIONAL
            KmsKeyId            => 'MyString',
            SnapshotId          => 'MyString',
            VolumeSize          => 1,            # OPTIONAL
            VolumeType =>
              'standard',    # values: standard, io1, gp2, sc1, st1; OPTIONAL
          },    # OPTIONAL
          NoDevice    => 'MyString',
          VirtualName => 'MyString',
        },
        ...
      ],        # OPTIONAL
      Description => 'MyString',    # OPTIONAL
      DryRun      => 1,             # OPTIONAL
      NoReboot    => 1,             # OPTIONAL
    );

    # Results:
    my $ImageId = $CreateImageResult->ImageId;

    # Returns a L<Paws::EC2::CreateImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateImage>

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

Information about one or more block device mappings. This parameter
cannot be used to modify the encryption status of existing volumes or
snapshots. To create an AMI with encrypted snapshots, use the CopyImage
action.



=head2 Description => Str

A description for the new image.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 B<REQUIRED> Name => Str

A name for the new image.

Constraints: 3-128 alphanumeric characters, parentheses (()), square
brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single
quotes ('), at-signs (@), or underscores(_)



=head2 NoReboot => Bool

By default, Amazon EC2 attempts to shut down and reboot the instance
before creating the image. If the 'No Reboot' option is set, Amazon EC2
doesn't shut down the instance before creating the image. When this
option is used, file system integrity on the created image can't be
guaranteed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

