package Paws::DMS::S3Settings;
  use Moose;
  has BucketFolder => (is => 'ro', isa => 'Str');
  has BucketName => (is => 'ro', isa => 'Str');
  has CompressionType => (is => 'ro', isa => 'Str');
  has CsvDelimiter => (is => 'ro', isa => 'Str');
  has CsvRowDelimiter => (is => 'ro', isa => 'Str');
  has ExternalTableDefinition => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::S3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::S3Settings object:

  $service_obj->Method(Att1 => { BucketFolder => $value, ..., ServiceAccessRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::S3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketFolder

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BucketFolder => Str

  An optional parameter to set a folder name in the S3 bucket. If
provided, tables are created in the path
E<lt>bucketFolderE<gt>/E<lt>schema_nameE<gt>/E<lt>table_nameE<gt>/. If
this parameter is not specified, then the path used is
E<lt>schema_nameE<gt>/E<lt>table_nameE<gt>/.


=head2 BucketName => Str

  The name of the S3 bucket.


=head2 CompressionType => Str

  An optional parameter to use GZIP to compress the target files. Set to
GZIP to compress the target files. Set to NONE (the default) or do not
use to leave the files uncompressed.


=head2 CsvDelimiter => Str

  The delimiter used to separate columns in the source files. The default
is a comma.


=head2 CsvRowDelimiter => Str

  The delimiter used to separate rows in the source files. The default is
a carriage return (\n).


=head2 ExternalTableDefinition => Str

  The external table definition.


=head2 ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) used by the service access IAM role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

