
package Paws::EC2::DescribeImageAttribute;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImageAttribute');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImageAttribute - Arguments for method DescribeImageAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImageAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeImageAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImageAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ImageAttribute = $ec2->DescribeImageAttribute(
      Attribute => 'description',
      ImageId   => 'MyString',
      DryRun    => 1,               # OPTIONAL
    );

    # Results:
    my $BlockDeviceMappings = $ImageAttribute->BlockDeviceMappings;
    my $Description         = $ImageAttribute->Description;
    my $ImageId             = $ImageAttribute->ImageId;
    my $KernelId            = $ImageAttribute->KernelId;
    my $LaunchPermissions   = $ImageAttribute->LaunchPermissions;
    my $ProductCodes        = $ImageAttribute->ProductCodes;
    my $RamdiskId           = $ImageAttribute->RamdiskId;
    my $SriovNetSupport     = $ImageAttribute->SriovNetSupport;

    # Returns a L<Paws::EC2::ImageAttribute> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeImageAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attribute => Str

The AMI attribute.

B<Note>: Depending on your account privileges, the
C<blockDeviceMapping> attribute may return a C<Client.AuthFailure>
error. If this happens, use DescribeImages to get information about the
block device mapping for the AMI.

Valid values are: C<"description">, C<"kernel">, C<"ramdisk">, C<"launchPermission">, C<"productCodes">, C<"blockDeviceMapping">, C<"sriovNetSupport">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ImageId => Str

The ID of the AMI.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImageAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

