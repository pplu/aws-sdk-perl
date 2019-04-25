
package Paws::EC2::ImportInstance;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DiskImages => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DiskImage]', traits => ['NameInRequest'], request_name => 'diskImage' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has LaunchSpecification => (is => 'ro', isa => 'Paws::EC2::ImportInstanceLaunchSpecification', traits => ['NameInRequest'], request_name => 'launchSpecification' );
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportInstance - Arguments for method ImportInstance on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportInstance on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ImportInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportInstance.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ImportInstanceResult = $ec2->ImportInstance(
      Platform    => 'Windows',
      Description => 'MyString',    # OPTIONAL
      DiskImages  => [
        {
          Description => 'MyString',
          Image       => {
            Bytes             => 1,
            Format            => 'VMDK',       # values: VMDK, RAW, VHD
            ImportManifestUrl => 'MyString',

          },    # OPTIONAL
          Volume => {
            Size => 1,

          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      DryRun              => 1,    # OPTIONAL
      LaunchSpecification => {
        AdditionalInfo => 'MyString',
        Architecture   => 'i386',       # values: i386, x86_64, arm64; OPTIONAL
        GroupIds   => [ 'MyString', ... ],    # OPTIONAL
        GroupNames => [ 'MyString', ... ],    # OPTIONAL
        InstanceInitiatedShutdownBehavior =>
          'stop',    # values: stop, terminate; OPTIONAL
        InstanceType => 't1.micro'
        , # values: t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.12xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.12xlarge, r5a.24xlarge, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.12xlarge, r5d.24xlarge, r5d.metal, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.18xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.18xlarge, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.12xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.12xlarge, m5a.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.12xlarge, m5d.24xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge; OPTIONAL
        Monitoring => 1,
        Placement  => {
          Affinity         => 'MyString',
          AvailabilityZone => 'MyString',
          GroupName        => 'MyString',
          HostId           => 'MyString',
          PartitionNumber  => 1,            # OPTIONAL
          SpreadDomain     => 'MyString',
          Tenancy => 'default',    # values: default, dedicated, host; OPTIONAL
        },    # OPTIONAL
        PrivateIpAddress => 'MyString',
        SubnetId         => 'MyString',
        UserData         => { Data => 'MyString', },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ConversionTask = $ImportInstanceResult->ConversionTask;

    # Returns a L<Paws::EC2::ImportInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ImportInstance>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the instance being imported.



=head2 DiskImages => ArrayRef[L<Paws::EC2::DiskImage>]

The disk image.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LaunchSpecification => L<Paws::EC2::ImportInstanceLaunchSpecification>

The launch specification.



=head2 B<REQUIRED> Platform => Str

The instance operating system.

Valid values are: C<"Windows">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportInstance in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

