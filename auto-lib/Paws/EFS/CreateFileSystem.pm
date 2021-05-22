
package Paws::EFS::CreateFileSystem;
  use Moose;
  has AvailabilityZoneName => (is => 'ro', isa => 'Str');
  has Backup => (is => 'ro', isa => 'Bool');
  has CreationToken => (is => 'ro', isa => 'Str', required => 1);
  has Encrypted => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PerformanceMode => (is => 'ro', isa => 'Str');
  has ProvisionedThroughputInMibps => (is => 'ro', isa => 'Num');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EFS::Tag]');
  has ThroughputMode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFileSystem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::FileSystemDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::CreateFileSystem - Arguments for method CreateFileSystem on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFileSystem on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method CreateFileSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFileSystem.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    # To create a new file system
    # This operation creates a new file system with the default generalpurpose
    # performance mode.
    my $FileSystemDescription = $elasticfilesystem->CreateFileSystem(
      'CreationToken'   => 'tokenstring',
      'PerformanceMode' => 'generalPurpose',
      'Tags'            => [

        {
          'Key'   => 'Name',
          'Value' => 'MyFileSystem'
        }
      ]
    );

    # Results:
    my $CreationTime         = $FileSystemDescription->CreationTime;
    my $CreationToken        = $FileSystemDescription->CreationToken;
    my $FileSystemId         = $FileSystemDescription->FileSystemId;
    my $LifeCycleState       = $FileSystemDescription->LifeCycleState;
    my $NumberOfMountTargets = $FileSystemDescription->NumberOfMountTargets;
    my $OwnerId              = $FileSystemDescription->OwnerId;
    my $PerformanceMode      = $FileSystemDescription->PerformanceMode;
    my $SizeInBytes          = $FileSystemDescription->SizeInBytes;
    my $Tags                 = $FileSystemDescription->Tags;

    # Returns a L<Paws::EFS::FileSystemDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/CreateFileSystem>

=head1 ATTRIBUTES


=head2 AvailabilityZoneName => Str

Used to create a file system that uses One Zone storage classes. It
specifies the AWS Availability Zone in which to create the file system.
Use the format C<us-east-1a> to specify the Availability Zone. For more
information about One Zone storage classes, see Using EFS storage
classes
(https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html) in the
I<Amazon EFS User Guide>.

One Zone storage classes are not available in all Availability Zones in
AWS Regions where Amazon EFS is available.



=head2 Backup => Bool

Specifies whether automatic backups are enabled on the file system that
you are creating. Set the value to C<true> to enable automatic backups.
If you are creating a file system that uses One Zone storage classes,
automatic backups are enabled by default. For more information, see
Automatic backups
(https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups)
in the I<Amazon EFS User Guide>.

Default is C<false>. However, if you specify an
C<AvailabilityZoneName>, the default is C<true>.

AWS Backup is not available in all AWS Regions where Amazon EFS is
available.



=head2 B<REQUIRED> CreationToken => Str

A string of up to 64 ASCII characters. Amazon EFS uses this to ensure
idempotent creation.



=head2 Encrypted => Bool

A Boolean value that, if true, creates an encrypted file system. When
creating an encrypted file system, you have the option of specifying
CreateFileSystemRequest$KmsKeyId for an existing AWS Key Management
Service (AWS KMS) customer master key (CMK). If you don't specify a
CMK, then the default CMK for Amazon EFS, C</aws/elasticfilesystem>, is
used to protect the encrypted file system.



=head2 KmsKeyId => Str

The ID of the AWS KMS CMK that you want to use to protect the encrypted
file system. This parameter is only required if you want to use a
non-default KMS key. If this parameter is not specified, the default
CMK for Amazon EFS is used. This ID can be in one of the following
formats:

=over

=item *

Key ID - A unique identifier of the key, for example
C<1234abcd-12ab-34cd-56ef-1234567890ab>.

=item *

ARN - An Amazon Resource Name (ARN) for the key, for example
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.

=item *

Key alias - A previously created display name for a key, for example
C<alias/projectKey1>.

=item *

Key alias ARN - An ARN for a key alias, for example
C<arn:aws:kms:us-west-2:444455556666:alias/projectKey1>.

=back

If C<KmsKeyId> is specified, the CreateFileSystemRequest$Encrypted
parameter must be set to true.

EFS accepts only symmetric KMS keys. You cannot use asymmetric KMS keys
with EFS file systems.



=head2 PerformanceMode => Str

The performance mode of the file system. We recommend C<generalPurpose>
performance mode for most file systems. File systems using the C<maxIO>
performance mode can scale to higher levels of aggregate throughput and
operations per second with a tradeoff of slightly higher latencies for
most file operations. The performance mode can't be changed after the
file system has been created.

The C<maxIO> mode is not supported on file systems using One Zone
storage classes.

Valid values are: C<"generalPurpose">, C<"maxIO">

=head2 ProvisionedThroughputInMibps => Num

The throughput, measured in MiB/s, that you want to provision for a
file system that you're creating. Valid values are 1-1024. Required if
C<ThroughputMode> is set to C<provisioned>. The upper limit for
throughput is 1024 MiB/s. To increase this limit, contact AWS Support.
For more information, see Amazon EFS quotas that you can increase
(https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits) in
the I<Amazon EFS User Guide>.



=head2 Tags => ArrayRef[L<Paws::EFS::Tag>]

A value that specifies to create one or more tags associated with the
file system. Each tag is a user-defined key-value pair. Name your file
system on creation by including a C<"Key":"Name","Value":"{value}">
key-value pair.



=head2 ThroughputMode => Str

Specifies the throughput mode for the file system, either C<bursting>
or C<provisioned>. If you set C<ThroughputMode> to C<provisioned>, you
must also set a value for C<ProvisionedThroughputInMibps>. After you
create the file system, you can decrease your file system's throughput
in Provisioned Throughput mode or change between the throughput modes,
as long as itE<rsquo>s been more than 24 hours since the last decrease
or throughput mode change. For more information, see Specifying
throughput with provisioned mode
(https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput)
in the I<Amazon EFS User Guide>.

Default is C<bursting>.

Valid values are: C<"bursting">, C<"provisioned">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystem in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

