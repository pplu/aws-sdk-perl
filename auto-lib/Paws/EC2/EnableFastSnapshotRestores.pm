
package Paws::EC2::EnableFastSnapshotRestores;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AvailabilityZone' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has SourceSnapshotIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SourceSnapshotId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableFastSnapshotRestores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::EnableFastSnapshotRestoresResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableFastSnapshotRestores - Arguments for method EnableFastSnapshotRestores on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableFastSnapshotRestores on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method EnableFastSnapshotRestores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableFastSnapshotRestores.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $EnableFastSnapshotRestoresResult = $ec2->EnableFastSnapshotRestores(
      AvailabilityZones => [ 'MyString',     ... ],
      SourceSnapshotIds => [ 'MySnapshotId', ... ],
      DryRun            => 1,    # OPTIONAL
    );

    # Results:
    my $Successful   = $EnableFastSnapshotRestoresResult->Successful;
    my $Unsuccessful = $EnableFastSnapshotRestoresResult->Unsuccessful;

    # Returns a L<Paws::EC2::EnableFastSnapshotRestoresResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/EnableFastSnapshotRestores>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones. For example, C<us-east-2a>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> SourceSnapshotIds => ArrayRef[Str|Undef]

The IDs of one or more snapshots. For example,
C<snap-1234567890abcdef0>. You can specify a snapshot that was shared
with you from another AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableFastSnapshotRestores in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

