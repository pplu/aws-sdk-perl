
package Paws::EC2::ModifyVolume;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVolume - Arguments for method ModifyVolume on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVolume on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVolume.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVolumeResult = $ec2->ModifyVolume(
      VolumeId   => 'MyString',
      DryRun     => 1,             # OPTIONAL
      Iops       => 1,             # OPTIONAL
      Size       => 1,             # OPTIONAL
      VolumeType => 'standard',    # OPTIONAL
    );

    # Results:
    my $VolumeModification = $ModifyVolumeResult->VolumeModification;

    # Returns a L<Paws::EC2::ModifyVolumeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVolume>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Iops => Int

The target IOPS rate of the volume.

This is only valid for Provisioned IOPS SSD (C<io1>) volumes. For more
information, see Provisioned IOPS SSD (io1) Volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_piops).

Default: If no IOPS value is specified, the existing value is retained.



=head2 Size => Int

The target size of the volume, in GiB. The target volume size must be
greater than or equal to than the existing size of the volume. For
information about available EBS volume sizes, see Amazon EBS Volume
Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).

Default: If no size is specified, the existing size is retained.



=head2 B<REQUIRED> VolumeId => Str

The ID of the volume.



=head2 VolumeType => Str

The target EBS volume type of the volume.

Default: If no type is specified, the existing type is retained.

Valid values are: C<"standard">, C<"io1">, C<"gp2">, C<"sc1">, C<"st1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

