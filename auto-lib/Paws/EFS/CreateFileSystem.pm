
package Paws::EFS::CreateFileSystem;
  use Moose;
  has CreationToken => (is => 'ro', isa => 'Str', required => 1);
  has Encrypted => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PerformanceMode => (is => 'ro', isa => 'Str');

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

As an example:

  $service_obj->CreateFileSystem(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/CreateFileSystem>
=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationToken => Str

String of up to 64 ASCII characters. Amazon EFS uses this to ensure
idempotent creation.



=head2 Encrypted => Bool

A boolean value that, if true, creates an encrypted file system. When
creating an encrypted file system, you have the option of specifying a
CreateFileSystemRequest$KmsKeyId for an existing AWS Key Management
Service (AWS KMS) customer master key (CMK). If you don't specify a
CMK, then the default CMK for Amazon EFS, C</aws/elasticfilesystem>, is
used to protect the encrypted file system.



=head2 KmsKeyId => Str

The id of the AWS KMS CMK that will be used to protect the encrypted
file system. This parameter is only required if you want to use a
non-default CMK. If this parameter is not specified, the default CMK
for Amazon EFS is used. This id can be in one of the following formats:

=over

=item *

Key ID - A unique identifier of the key. For example,
C<1234abcd-12ab-34cd-56ef-1234567890ab>.

=item *

ARN - An Amazon Resource Name for the key. For example,
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.

=item *

Key alias - A previously created display name for a key. For example,
C<alias/projectKey1>.

=item *

Key alias ARN - An Amazon Resource Name for a key alias. For example,
C<arn:aws:kms:us-west-2:444455556666:alias/projectKey1>.

=back

Note that if the KmsKeyId is specified, the
CreateFileSystemRequest$Encrypted parameter must be set to true.



=head2 PerformanceMode => Str

The C<PerformanceMode> of the file system. We recommend
C<generalPurpose> performance mode for most file systems. File systems
using the C<maxIO> performance mode can scale to higher levels of
aggregate throughput and operations per second with a tradeoff of
slightly higher latencies for most file operations. This can't be
changed after the file system has been created.

Valid values are: C<"generalPurpose">, C<"maxIO">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileSystem in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

