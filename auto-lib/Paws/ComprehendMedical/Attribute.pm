package Paws::ComprehendMedical::Attribute;
  use Moose;
  has BeginOffset => (is => 'ro', isa => 'Int');
  has EndOffset => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Int');
  has RelationshipScore => (is => 'ro', isa => 'Num');
  has Score => (is => 'ro', isa => 'Num');
  has Text => (is => 'ro', isa => 'Str');
  has Traits => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::Trait]');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::Attribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::Attribute object:

  $service_obj->Method(Att1 => { BeginOffset => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::Attribute object:

  $result = $service_obj->Method(...);
  $result->Att1->BeginOffset

=head1 DESCRIPTION

An extracted segment of the text that is an attribute of an entity, or
otherwise related to an entity, such as the dosage of a medication
taken. It contains information about the attribute such as id, begin
and end offset within the input text, and the segment of the input
text.

=head1 ATTRIBUTES


=head2 BeginOffset => Int

  The 0-based character offset in the input text that shows where the
attribute begins. The offset returns the UTF-8 code point in the
string.


=head2 EndOffset => Int

  The 0-based character offset in the input text that shows where the
attribute ends. The offset returns the UTF-8 code point in the string.


=head2 Id => Int

  The numeric identifier for this attribute. This is a monotonically
increasing id unique within this response rather than a global unique
identifier.


=head2 RelationshipScore => Num

  The level of confidence that Comprehend Medical has that this attribute
is correctly related to this entity.


=head2 Score => Num

  The level of confidence that Comprehend Medical has that the segment of
text is correctly recognized as an attribute.


=head2 Text => Str

  The segment of input text extracted as this attribute.


=head2 Traits => ArrayRef[L<Paws::ComprehendMedical::Trait>]

  Contextual information for this attribute.


=head2 Type => Str

  The type of attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

