package Paws::ComprehendMedical::ICD10CMTrait;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Score => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::ICD10CMTrait

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::ICD10CMTrait object:

  $service_obj->Method(Att1 => { Name => $value, ..., Score => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::ICD10CMTrait object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contextual information for the entity. The traits recognized by
InferICD10CM are C<DIAGNOSIS>, C<SIGN>, C<SYMPTOM>, and C<NEGATION>.

=head1 ATTRIBUTES


=head2 Name => Str

  Provides a name or contextual description about the trait.


=head2 Score => Num

  The level of confidence that Amazon Comprehend Medical has that the
segment of text is correctly recognized as a trait.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

