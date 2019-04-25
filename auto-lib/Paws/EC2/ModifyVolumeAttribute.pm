
package Paws::EC2::ModifyVolumeAttribute;
  use Moose;
  has AutoEnableIO => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVolumeAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVolumeAttribute - Arguments for method ModifyVolumeAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVolumeAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVolumeAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVolumeAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To modify a volume attribute
    # This example sets the ``autoEnableIo`` attribute of the volume with the ID
    # ``vol-1234567890abcdef0`` to ``true``. If the command succeeds, no output
    # is returned.
    $ec2->ModifyVolumeAttribute(
      {
        'AutoEnableIO' => {
          'Value' => 1
        },
        'DryRun'   => 1,
        'VolumeId' => 'vol-1234567890abcdef0'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVolumeAttribute>

=head1 ATTRIBUTES


=head2 AutoEnableIO => L<Paws::EC2::AttributeBooleanValue>

Indicates whether the volume should be auto-enabled for I/O operations.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> VolumeId => Str

The ID of the volume.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVolumeAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

