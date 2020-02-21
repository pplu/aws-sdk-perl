package Paws::ComprehendMedical::RxNormAttribute;
  use Moose;
  has BeginOffset => (is => 'ro', isa => 'Int');
  has EndOffset => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Int');
  has RelationshipScore => (is => 'ro', isa => 'Num');
  has Score => (is => 'ro', isa => 'Num');
  has Text => (is => 'ro', isa => 'Str');
  has Traits => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::RxNormTrait]');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::RxNormAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::RxNormAttribute object:

  $service_obj->Method(Att1 => { BeginOffset => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::RxNormAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->BeginOffset

=head1 DESCRIPTION

The extracted attributes that relate to this entity. The attributes
recognized by InferRxNorm are C<DOSAGE>, C<DURATION>, C<FORM>,
C<FREQUENCY>, C<RATE>, C<ROUTE_OR_MODE>.

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

  The level of confidence that Amazon Comprehend Medical has that the
attribute is accurately linked to an entity.


=head2 Score => Num

  The level of confidence that Comprehend Medical has that the segment of
text is correctly recognized as an attribute.


=head2 Text => Str

  The segment of input text which corresponds to the detected attribute.


=head2 Traits => ArrayRef[L<Paws::ComprehendMedical::RxNormTrait>]

  Contextual information for the attribute. InferRxNorm recognizes the
trait C<NEGATION> for attributes, i.e. that the patient is not taking a
specific dose or form of a medication.


=head2 Type => Str

  The type of attribute. The types of attributes recognized by
InferRxNorm are C<BRAND_NAME> and C<GENERIC_NAME>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

