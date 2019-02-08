
package Paws::EC2::CopySnapshot;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DestinationRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationRegion' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'encrypted' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has PresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'presignedUrl' );
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceSnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshot - Arguments for method CopySnapshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To copy a snapshot
   # This example copies a snapshot with the snapshot ID of
   # ``snap-066877671789bd71b`` from the ``us-west-2`` region to the
   # ``us-east-1`` region and adds a short description to identify the snapshot.
    my $CopySnapshotResult = $ec2->CopySnapshot(
      {
        'Description'       => 'This is my copied snapshot.',
        'DestinationRegion' => 'us-east-1',
        'SourceRegion'      => 'us-west-2',
        'SourceSnapshotId'  => 'snap-066877671789bd71b'
      }
    );

    # Results:
    my $SnapshotId = $CopySnapshotResult->SnapshotId;

    # Returns a L<Paws::EC2::CopySnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CopySnapshot>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the EBS snapshot.



=head2 DestinationRegion => Str

The destination region to use in the C<PresignedUrl> parameter of a
snapshot copy operation. This parameter is only valid for specifying
the destination region in a C<PresignedUrl> parameter, where it is
required.

The snapshot copy is sent to the regional endpoint that you sent the
HTTP request to (for example, C<ec2.us-east-1.amazonaws.com>). With the
AWS CLI, this is specified using the C<--region> parameter or the
default region in your AWS configuration file.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

Specifies whether the destination snapshot should be encrypted. You can
encrypt a copy of an unencrypted snapshot, but you cannot use it to
create an unencrypted copy of an encrypted snapshot. Your default CMK
for EBS is used unless you specify a non-default AWS Key Management
Service (AWS KMS) CMK using C<KmsKeyId>. For more information, see
Amazon EBS Encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 KmsKeyId => Str

An identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) to use when creating the encrypted volume. This
parameter is only required if you want to use a non-default CMK; if
this parameter is not specified, the default CMK for EBS is used. If a
C<KmsKeyId> is specified, the C<Encrypted> flag must also be set.

The CMK identifier may be provided in any of the following formats:

=over

=item *

Key ID

=item *

Key alias

=item *

ARN using key ID. The ID ARN contains the C<arn:aws:kms> namespace,
followed by the region of the CMK, the AWS account ID of the CMK owner,
the C<key> namespace, and then the CMK ID. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:key/I<abcd1234-a123-456a-a12b-a123b4cd56ef>.

=item *

ARN using key alias. The alias ARN contains the C<arn:aws:kms>
namespace, followed by the region of the CMK, the AWS account ID of the
CMK owner, the C<alias> namespace, and then the CMK alias. For example,
arn:aws:kms:I<us-east-1>:I<012345678910>:alias/I<ExampleAlias>.

=back

AWS parses C<KmsKeyId> asynchronously, meaning that the action you call
may appear to complete even though you provided an invalid identifier.
The action will eventually fail.



=head2 PresignedUrl => Str

When you copy an encrypted source snapshot using the Amazon EC2 Query
API, you must supply a pre-signed URL. This parameter is optional for
unencrypted snapshots. For more information, see Query Requests
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html).

The C<PresignedUrl> should use the snapshot source endpoint, the
C<CopySnapshot> action, and include the C<SourceRegion>,
C<SourceSnapshotId>, and C<DestinationRegion> parameters. The
C<PresignedUrl> must be signed using AWS Signature Version 4. Because
EBS snapshots are stored in Amazon S3, the signing algorithm for this
parameter uses the same logic that is described in Authenticating
Requests by Using Query Parameters (AWS Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
in the I<Amazon Simple Storage Service API Reference>. An invalid or
improperly signed C<PresignedUrl> will cause the copy operation to fail
asynchronously, and the snapshot will move to an C<error> state.



=head2 B<REQUIRED> SourceRegion => Str

The ID of the region that contains the snapshot to be copied.



=head2 B<REQUIRED> SourceSnapshotId => Str

The ID of the EBS snapshot to copy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

