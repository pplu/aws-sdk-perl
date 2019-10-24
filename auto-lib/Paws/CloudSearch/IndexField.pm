# Generated from default/object.tt
package Paws::CloudSearch::IndexField;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_IntOptions CloudSearch_TextOptions CloudSearch_LiteralArrayOptions CloudSearch_LatLonOptions CloudSearch_DoubleArrayOptions CloudSearch_DateOptions CloudSearch_TextArrayOptions CloudSearch_IntArrayOptions CloudSearch_DateArrayOptions CloudSearch_LiteralOptions CloudSearch_DoubleOptions/;
  has DateArrayOptions => (is => 'ro', isa => CloudSearch_DateArrayOptions);
  has DateOptions => (is => 'ro', isa => CloudSearch_DateOptions);
  has DoubleArrayOptions => (is => 'ro', isa => CloudSearch_DoubleArrayOptions);
  has DoubleOptions => (is => 'ro', isa => CloudSearch_DoubleOptions);
  has IndexFieldName => (is => 'ro', isa => Str, required => 1);
  has IndexFieldType => (is => 'ro', isa => Str, required => 1);
  has IntArrayOptions => (is => 'ro', isa => CloudSearch_IntArrayOptions);
  has IntOptions => (is => 'ro', isa => CloudSearch_IntOptions);
  has LatLonOptions => (is => 'ro', isa => CloudSearch_LatLonOptions);
  has LiteralArrayOptions => (is => 'ro', isa => CloudSearch_LiteralArrayOptions);
  has LiteralOptions => (is => 'ro', isa => CloudSearch_LiteralOptions);
  has TextArrayOptions => (is => 'ro', isa => CloudSearch_TextArrayOptions);
  has TextOptions => (is => 'ro', isa => CloudSearch_TextOptions);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DateOptions' => {
                                  'class' => 'Paws::CloudSearch::DateOptions',
                                  'type' => 'CloudSearch_DateOptions'
                                },
               'TextOptions' => {
                                  'class' => 'Paws::CloudSearch::TextOptions',
                                  'type' => 'CloudSearch_TextOptions'
                                },
               'LiteralArrayOptions' => {
                                          'class' => 'Paws::CloudSearch::LiteralArrayOptions',
                                          'type' => 'CloudSearch_LiteralArrayOptions'
                                        },
               'DateArrayOptions' => {
                                       'class' => 'Paws::CloudSearch::DateArrayOptions',
                                       'type' => 'CloudSearch_DateArrayOptions'
                                     },
               'IntOptions' => {
                                 'class' => 'Paws::CloudSearch::IntOptions',
                                 'type' => 'CloudSearch_IntOptions'
                               },
               'IntArrayOptions' => {
                                      'class' => 'Paws::CloudSearch::IntArrayOptions',
                                      'type' => 'CloudSearch_IntArrayOptions'
                                    },
               'IndexFieldName' => {
                                     'type' => 'Str'
                                   },
               'LatLonOptions' => {
                                    'class' => 'Paws::CloudSearch::LatLonOptions',
                                    'type' => 'CloudSearch_LatLonOptions'
                                  },
               'DoubleArrayOptions' => {
                                         'class' => 'Paws::CloudSearch::DoubleArrayOptions',
                                         'type' => 'CloudSearch_DoubleArrayOptions'
                                       },
               'LiteralOptions' => {
                                     'class' => 'Paws::CloudSearch::LiteralOptions',
                                     'type' => 'CloudSearch_LiteralOptions'
                                   },
               'IndexFieldType' => {
                                     'type' => 'Str'
                                   },
               'TextArrayOptions' => {
                                       'class' => 'Paws::CloudSearch::TextArrayOptions',
                                       'type' => 'CloudSearch_TextArrayOptions'
                                     },
               'DoubleOptions' => {
                                    'class' => 'Paws::CloudSearch::DoubleOptions',
                                    'type' => 'CloudSearch_DoubleOptions'
                                  }
             },
  'IsRequired' => {
                    'IndexFieldType' => 1,
                    'IndexFieldName' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 DateArrayOptions => CloudSearch_DateArrayOptions

  


=head2 DateOptions => CloudSearch_DateOptions

  


=head2 DoubleArrayOptions => CloudSearch_DoubleArrayOptions

  


=head2 DoubleOptions => CloudSearch_DoubleOptions

  


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

  


=head2 IntArrayOptions => CloudSearch_IntArrayOptions

  


=head2 IntOptions => CloudSearch_IntOptions

  


=head2 LatLonOptions => CloudSearch_LatLonOptions

  


=head2 LiteralArrayOptions => CloudSearch_LiteralArrayOptions

  


=head2 LiteralOptions => CloudSearch_LiteralOptions

  


=head2 TextArrayOptions => CloudSearch_TextArrayOptions

  


=head2 TextOptions => CloudSearch_TextOptions

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

