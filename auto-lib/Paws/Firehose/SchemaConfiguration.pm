package Paws::Firehose::SchemaConfiguration;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::SchemaConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::SchemaConfiguration object:

  $service_obj->Method(Att1 => { CatalogId => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::SchemaConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CatalogId

=head1 DESCRIPTION

Specifies the schema to which you want Kinesis Data Firehose to
configure your data before it writes it to Amazon S3.

=head1 ATTRIBUTES


=head2 CatalogId => Str

  The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS
account ID is used by default.


=head2 DatabaseName => Str

  Specifies the name of the AWS Glue database that contains the schema
for the output data.


=head2 Region => Str

  If you don't specify an AWS Region, the default is the current Region.


=head2 RoleARN => Str

  The role that Kinesis Data Firehose can use to access AWS Glue. This
role must be in the same account you use for Kinesis Data Firehose.
Cross-account roles aren't allowed.


=head2 TableName => Str

  Specifies the AWS Glue table that contains the column information that
constitutes your data schema.


=head2 VersionId => Str

  Specifies the table version for the output data schema. If you don't
specify this version ID, or if you set it to C<LATEST>, Kinesis Data
Firehose uses the most recent version. This means that any updates to
the table are automatically picked up.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

