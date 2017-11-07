package Paws::CloudSearch::IndexField;
  use Moose;
  has DateArrayOptions => (is => 'ro', isa => 'Paws::CloudSearch::DateArrayOptions');
  has DateOptions => (is => 'ro', isa => 'Paws::CloudSearch::DateOptions');
  has DoubleArrayOptions => (is => 'ro', isa => 'Paws::CloudSearch::DoubleArrayOptions');
  has DoubleOptions => (is => 'ro', isa => 'Paws::CloudSearch::DoubleOptions');
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldType => (is => 'ro', isa => 'Str', required => 1);
  has IntArrayOptions => (is => 'ro', isa => 'Paws::CloudSearch::IntArrayOptions');
  has IntOptions => (is => 'ro', isa => 'Paws::CloudSearch::IntOptions');
  has LatLonOptions => (is => 'ro', isa => 'Paws::CloudSearch::LatLonOptions');
  has LiteralArrayOptions => (is => 'ro', isa => 'Paws::CloudSearch::LiteralArrayOptions');
  has LiteralOptions => (is => 'ro', isa => 'Paws::CloudSearch::LiteralOptions');
  has TextArrayOptions => (is => 'ro', isa => 'Paws::CloudSearch::TextArrayOptions');
  has TextOptions => (is => 'ro', isa => 'Paws::CloudSearch::TextOptions');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::IndexField

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::IndexField object:

  $service_obj->Method(Att1 => { DateArrayOptions => $value, ..., TextOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::IndexField object:

  $result = $service_obj->Method(...);
  $result->Att1->DateArrayOptions

=head1 DESCRIPTION

Configuration information for a field in the index, including its name,
type, and options. The supported options depend on the
C<IndexFieldType>.

=head1 ATTRIBUTES


=head2 DateArrayOptions => L<Paws::CloudSearch::DateArrayOptions>

  


=head2 DateOptions => L<Paws::CloudSearch::DateOptions>

  


=head2 DoubleArrayOptions => L<Paws::CloudSearch::DoubleArrayOptions>

  


=head2 DoubleOptions => L<Paws::CloudSearch::DoubleOptions>

  


=head2 B<REQUIRED> IndexFieldName => Str

  A string that represents the name of an index field. CloudSearch
supports regular index fields as well as dynamic fields. A dynamic
field's name defines a pattern that begins or ends with a wildcard. Any
document fields that don't map to a regular index field but do match a
dynamic field's pattern are configured with the dynamic field's
indexing options.

Regular field names begin with a letter and can contain the following
characters: a-z (lowercase), 0-9, and _ (underscore). Dynamic field
names must begin or end with a wildcard (*). The wildcard can also be
the only character in a dynamic field name. Multiple wildcards, and
wildcards embedded within a string are not supported.

The name C<score> is reserved and cannot be used as a field name. To
reference a document's ID, you can use the name C<_id>.


=head2 B<REQUIRED> IndexFieldType => Str

  


=head2 IntArrayOptions => L<Paws::CloudSearch::IntArrayOptions>

  


=head2 IntOptions => L<Paws::CloudSearch::IntOptions>

  


=head2 LatLonOptions => L<Paws::CloudSearch::LatLonOptions>

  


=head2 LiteralArrayOptions => L<Paws::CloudSearch::LiteralArrayOptions>

  


=head2 LiteralOptions => L<Paws::CloudSearch::LiteralOptions>

  


=head2 TextArrayOptions => L<Paws::CloudSearch::TextArrayOptions>

  


=head2 TextOptions => L<Paws::CloudSearch::TextOptions>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

