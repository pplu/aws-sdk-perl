package Paws::Glue::StorageDescriptor;
  use Moose;
  has BucketColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Columns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Column]');
  has Compressed => (is => 'ro', isa => 'Bool');
  has InputFormat => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has NumberOfBuckets => (is => 'ro', isa => 'Int');
  has OutputFormat => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::Glue::ParametersMap');
  has SerdeInfo => (is => 'ro', isa => 'Paws::Glue::SerDeInfo');
  has SkewedInfo => (is => 'ro', isa => 'Paws::Glue::SkewedInfo');
  has SortColumns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Order]');
  has StoredAsSubDirectories => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StorageDescriptor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::StorageDescriptor object:

  $service_obj->Method(Att1 => { BucketColumns => $value, ..., StoredAsSubDirectories => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::StorageDescriptor object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketColumns

=head1 DESCRIPTION

Describes the physical storage of table data.

=head1 ATTRIBUTES


=head2 BucketColumns => ArrayRef[Str|Undef]

  A list of reducer grouping columns, clustering columns, and bucketing
columns in the table.


=head2 Columns => ArrayRef[L<Paws::Glue::Column>]

  A list of the C<Columns> in the table.


=head2 Compressed => Bool

  True if the data in the table is compressed, or False if not.


=head2 InputFormat => Str

  The input format: C<SequenceFileInputFormat> (binary), or
C<TextInputFormat>, or a custom format.


=head2 Location => Str

  The physical location of the table. By default this takes the form of
the warehouse location, followed by the database location in the
warehouse, followed by the table name.


=head2 NumberOfBuckets => Int

  Must be specified if the table contains any dimension columns.


=head2 OutputFormat => Str

  The output format: C<SequenceFileOutputFormat> (binary), or
C<IgnoreKeyTextOutputFormat>, or a custom format.


=head2 Parameters => L<Paws::Glue::ParametersMap>

  User-supplied properties in key-value form.


=head2 SerdeInfo => L<Paws::Glue::SerDeInfo>

  Serialization/deserialization (SerDe) information.


=head2 SkewedInfo => L<Paws::Glue::SkewedInfo>

  Information about values that appear very frequently in a column
(skewed values).


=head2 SortColumns => ArrayRef[L<Paws::Glue::Order>]

  A list specifying the sort order of each bucket in the table.


=head2 StoredAsSubDirectories => Bool

  True if the table data is stored in subdirectories, or False if not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

