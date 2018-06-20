
package Paws::EC2::ImportSnapshot;
  use Moose;
  has ClientData => (is => 'ro', isa => 'Paws::EC2::ClientData');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DiskContainer => (is => 'ro', isa => 'Paws::EC2::SnapshotDiskContainer');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RoleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportSnapshot - Arguments for method ImportSnapshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportSnapshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ImportSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportSnapshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ImportSnapshotResult = $ec2->ImportSnapshot(
      ClientData => {
        Comment     => 'MyString',               # OPTIONAL
        UploadEnd   => '1970-01-01T01:00:00',    # OPTIONAL
        UploadSize  => 1,                        # OPTIONAL
        UploadStart => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      ClientToken   => 'MyString',    # OPTIONAL
      Description   => 'MyString',    # OPTIONAL
      DiskContainer => {
        Description => 'MyString',    # OPTIONAL
        Format      => 'MyString',    # OPTIONAL
        Url         => 'MyString',    # OPTIONAL
        UserBucket  => {
          S3Bucket => 'MyString',     # OPTIONAL
          S3Key    => 'MyString',     # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DryRun   => 1,             # OPTIONAL
      RoleName => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Description        = $ImportSnapshotResult->Description;
    my $ImportTaskId       = $ImportSnapshotResult->ImportTaskId;
    my $SnapshotTaskDetail = $ImportSnapshotResult->SnapshotTaskDetail;

    # Returns a L<Paws::EC2::ImportSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ImportSnapshot>

=head1 ATTRIBUTES


=head2 ClientData => L<Paws::EC2::ClientData>

The client-specific data.



=head2 ClientToken => Str

Token to enable idempotency for VM import requests.



=head2 Description => Str

The description string for the import snapshot task.



=head2 DiskContainer => L<Paws::EC2::SnapshotDiskContainer>

Information about the disk container.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 RoleName => Str

The name of the role to use when not using the default role,
'vmimport'.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportSnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

