package Paws::CloudSearch::TextArrayOptions;
  use Moose;
  has AnalysisScheme => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has HighlightEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SourceFields => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::TextArrayOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::TextArrayOptions object:

  $service_obj->Method(Att1 => { AnalysisScheme => $value, ..., SourceFields => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::TextArrayOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalysisScheme

=head1 DESCRIPTION

Options for a field that contains an array of text strings. Present if
C<IndexFieldType> specifies the field is of type C<text-array>. A
C<text-array> field is always searchable. All options are enabled by
default.

=head1 ATTRIBUTES


=head2 AnalysisScheme => Str

  The name of an analysis scheme for a C<text-array> field.


=head2 DefaultValue => Str

  A value to use for the field if the field isn't specified for a
document.


=head2 HighlightEnabled => Bool

  Whether highlights can be returned for the field.


=head2 ReturnEnabled => Bool

  Whether the contents of the field can be returned in the search
results.


=head2 SourceFields => Str

  A list of source fields to map to the field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

