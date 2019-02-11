package Paws::FSX::DataRepositoryConfiguration;
  use Moose;
  has ExportPath => (is => 'ro', isa => 'Str');
  has ImportedFileChunkSize => (is => 'ro', isa => 'Int');
  has ImportPath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DataRepositoryConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DataRepositoryConfiguration object:

  $service_obj->Method(Att1 => { ExportPath => $value, ..., ImportPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DataRepositoryConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ExportPath

=head1 DESCRIPTION

The data repository configuration object for Lustre file systems
returned in the response of the C<CreateFileSystem> operation.

=head1 ATTRIBUTES


=head2 ExportPath => Str

  The export path to the Amazon S3 bucket (and prefix) that you are using
to store new and changed Lustre file system files in S3.


=head2 ImportedFileChunkSize => Int

  For files imported from a data repository, this value determines the
stripe count and maximum amount of data per file (in MiB) stored on a
single physical disk. The maximum number of disks that a single file
can be striped across is limited by the total number of disks that make
up the file system.

The default chunk size is 1,024 MiB (1 GiB) and can go as high as
512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5 TB.


=head2 ImportPath => Str

  The import path to the Amazon S3 bucket (and optional prefix) that
you're using as the data repository for your FSx for Lustre file
system, for example C<s3://import-bucket/optional-prefix>. If a prefix
is specified after the Amazon S3 bucket name, only object keys with
that prefix are loaded into the file system.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

