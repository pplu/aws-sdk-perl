
package Paws::EC2::AttachVolume;
  use Moose;
  has Device => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::VolumeAttachment');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachVolume - Arguments for method AttachVolume on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachVolume on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AttachVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachVolume.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To attach a volume to an instance
    # This example attaches a volume (``vol-1234567890abcdef0``) to an instance
    # (``i-01474ef662b89480``) as ``/dev/sdf``.
    my $VolumeAttachment = $ec2->AttachVolume(
      {
        'Device'     => '/dev/sdf',
        'InstanceId' => 'i-01474ef662b89480',
        'VolumeId'   => 'vol-1234567890abcdef0'
      }
    );

    # Results:
    my $AttachTime = $VolumeAttachment->AttachTime;
    my $Device     = $VolumeAttachment->Device;
    my $InstanceId = $VolumeAttachment->InstanceId;
    my $State      = $VolumeAttachment->State;
    my $VolumeId   = $VolumeAttachment->VolumeId;

    # Returns a L<Paws::EC2::VolumeAttachment> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AttachVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Device => Str

The device name (for example, C</dev/sdh> or C<xvdh>).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 B<REQUIRED> VolumeId => Str

The ID of the EBS volume. The volume and instance must be within the
same Availability Zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

