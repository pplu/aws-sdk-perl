package Paws::FSX::CreateFileSystemLustreConfiguration;
  use Moose;
  has ExportPath => (is => 'ro', isa => 'Str');
  has ImportedFileChunkSize => (is => 'ro', isa => 'Int');
  has ImportPath => (is => 'ro', isa => 'Str');
  has WeeklyMaintenanceStartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileSystemLustreConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::CreateFileSystemLustreConfiguration object:

  $service_obj->Method(Att1 => { ExportPath => $value, ..., WeeklyMaintenanceStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::CreateFileSystemLustreConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ExportPath

=head1 DESCRIPTION

The configuration object for Lustre file systems used in the
C<CreateFileSystem> operation.

=head1 ATTRIBUTES


=head2 ExportPath => Str

  (Optional) The path in Amazon S3 where the root of your Amazon FSx file
system is exported. The path must use the same Amazon S3 bucket as
specified in ImportPath. You can provide an optional prefix to which
new and changed data is to be exported from your Amazon FSx for Lustre
file system. If an C<ExportPath> value is not provided, Amazon FSx sets
a default export path,
C<s3://import-bucket/FSxLustre[creation-timestamp]>. The timestamp is
in UTC format, for example
C<s3://import-bucket/FSxLustre20181105T222312Z>.

The Amazon S3 export bucket must be the same as the import bucket
specified by C<ImportPath>. If you only specify a bucket name, such as
C<s3://import-bucket>, you get a 1:1 mapping of file system objects to
S3 bucket objects. This mapping means that the input data in S3 is
overwritten on export. If you provide a custom prefix in the export
path, such as C<s3://import-bucket/[custom-optional-prefix]>, Amazon
FSx exports the contents of your file system to that export prefix in
the Amazon S3 bucket.


=head2 ImportedFileChunkSize => Int

  (Optional) For files imported from a data repository, this value
determines the stripe count and maximum amount of data per file (in
MiB) stored on a single physical disk. The maximum number of disks that
a single file can be striped across is limited by the total number of
disks that make up the file system.

The chunk size default is 1,024 MiB (1 GiB) and can go as high as
512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5 TB.


=head2 ImportPath => Str

  (Optional) The path to the Amazon S3 bucket (including the optional
prefix) that you're using as the data repository for your Amazon FSx
for Lustre file system. The root of your FSx for Lustre file system
will be mapped to the root of the Amazon S3 bucket you select. An
example is C<s3://import-bucket/optional-prefix>. If you specify a
prefix after the Amazon S3 bucket name, only object keys with that
prefix are loaded into the file system.


=head2 WeeklyMaintenanceStartTime => Str

  The preferred time to perform weekly maintenance, in the UTC time zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

