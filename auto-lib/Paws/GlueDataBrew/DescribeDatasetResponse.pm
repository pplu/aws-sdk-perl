
package Paws::GlueDataBrew::DescribeDatasetResponse;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has FormatOptions => (is => 'ro', isa => 'Paws::GlueDataBrew::FormatOptions');
  has Input => (is => 'ro', isa => 'Paws::GlueDataBrew::Input', required => 1);
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PathOptions => (is => 'ro', isa => 'Paws::GlueDataBrew::PathOptions');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time that the dataset was created.


=head2 CreatedBy => Str

The identifier (user name) of the user who created the dataset.


=head2 Format => Str

The file format of a dataset that is created from an Amazon S3 file or
folder.

Valid values are: C<"CSV">, C<"JSON">, C<"PARQUET">, C<"EXCEL">
=head2 FormatOptions => L<Paws::GlueDataBrew::FormatOptions>




=head2 B<REQUIRED> Input => L<Paws::GlueDataBrew::Input>




=head2 LastModifiedBy => Str

The identifier (user name) of the user who last modified the dataset.


=head2 LastModifiedDate => Str

The date and time that the dataset was last modified.


=head2 B<REQUIRED> Name => Str

The name of the dataset.


=head2 PathOptions => L<Paws::GlueDataBrew::PathOptions>

A set of options that defines how DataBrew interprets an Amazon S3 path
of the dataset.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the dataset.


=head2 Source => Str

The location of the data for this dataset, Amazon S3 or the Glue Data
Catalog.

Valid values are: C<"S3">, C<"DATA-CATALOG">, C<"DATABASE">
=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags associated with this dataset.


=head2 _request_id => Str


=cut

