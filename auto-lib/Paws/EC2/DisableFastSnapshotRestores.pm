
package Paws::EC2::DisableFastSnapshotRestores;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AvailabilityZone' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has SourceSnapshotIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SourceSnapshotId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableFastSnapshotRestores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DisableFastSnapshotRestoresResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableFastSnapshotRestores - Arguments for method DisableFastSnapshotRestores on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableFastSnapshotRestores on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisableFastSnapshotRestores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableFastSnapshotRestores.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DisableFastSnapshotRestoresResult = $ec2->DisableFastSnapshotRestores(
      AvailabilityZones => [ 'MyString',     ... ],
      SourceSnapshotIds => [ 'MySnapshotId', ... ],
      DryRun            => 1,    # OPTIONAL
    );

    # Results:
    my $Successful   = $DisableFastSnapshotRestoresResult->Successful;
    my $Unsuccessful = $DisableFastSnapshotRestoresResult->Unsuccessful;

    # Returns a L<Paws::EC2::DisableFastSnapshotRestoresResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisableFastSnapshotRestores>

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
C<snap-1234567890abcdef0>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableFastSnapshotRestores in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

