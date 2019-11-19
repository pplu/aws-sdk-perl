
package Paws::EFS::CreateFileSystem;
  use Moo;
  use Types::Standard qw/Str Bool Num ArrayRef/;
  use Paws::EFS::Types qw/EFS_Tag/;
  has CreationToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Encrypted => (is => 'ro', isa => Bool, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has PerformanceMode => (is => 'ro', isa => Str, predicate => 1);
  has ProvisionedThroughputInMibps => (is => 'ro', isa => Num, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[EFS_Tag], predicate => 1);
  has ThroughputMode => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateFileSystem');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2015-02-01/file-systems');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EFS::FileSystemDescription');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CreationToken' => 1
                  },
  'types' => {
               'PerformanceMode' => {
                                      'type' => 'Str'
                                    },
               'Tags' => {
                           'type' => 'ArrayRef[EFS_Tag]',
                           'class' => 'Paws::EFS::Tag'
                         },
               'ThroughputMode' => {
                                     'type' => 'Str'
                                   },
               'CreationToken' => {
                                    'type' => 'Str'
                                  },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'ProvisionedThroughputInMibps' => {
                                                   'type' => 'Num'
                                                 },
               'KmsKeyId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

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
      'PerformanceMode' => 'generalPurpose'
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

    # Returns a L<Paws::EFS::FileSystemDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/CreateFileSystem>

=head1 ATTRIBUTES


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

The ID of the AWS KMS CMK to be used to protect the encrypted file
system. This parameter is only required if you want to use a nondefault
CMK. If this parameter is not specified, the default CMK for Amazon EFS
is used. This ID can be in one of the following formats:

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



=head2 PerformanceMode => Str

The performance mode of the file system. We recommend C<generalPurpose>
performance mode for most file systems. File systems using the C<maxIO>
performance mode can scale to higher levels of aggregate throughput and
operations per second with a tradeoff of slightly higher latencies for
most file operations. The performance mode can't be changed after the
file system has been created.

Valid values are: C<"generalPurpose">, C<"maxIO">

=head2 ProvisionedThroughputInMibps => Num

The throughput, measured in MiB/s, that you want to provision for a
file system that you're creating. Valid values are 1-1024. Required if
C<ThroughputMode> is set to C<provisioned>. The upper limit for
throughput is 1024 MiB/s. You can get this limit increased by
contacting AWS Support. For more information, see Amazon EFS Limits
That You Can Increase
(https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits) in
the I<Amazon EFS User Guide.>



=head2 Tags => ArrayRef[EFS_Tag]

A value that specifies to create one or more tags associated with the
file system. Each tag is a user-defined key-value pair. Name your file
system on creation by including a C<"Key":"Name","Value":"{value}">
key-value pair.



=head2 ThroughputMode => Str

The throughput mode for the file system to be created. There are two
throughput modes to choose from for your file system: C<bursting> and
C<provisioned>. If you set C<ThroughputMode> to C<provisioned>, you
must also set a value for C<ProvisionedThroughPutInMibps>. You can
decrease your file system's throughput in Provisioned Throughput mode
or change between the throughput modes as long as itE<rsquo>s been more
than 24 hours since the last decrease or throughput mode change. For
more, see Specifying Throughput with Provisioned Mode
(https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput)
in the I<Amazon EFS User Guide.>

Valid values are: C<"bursting">, C<"provisioned">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystem in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

