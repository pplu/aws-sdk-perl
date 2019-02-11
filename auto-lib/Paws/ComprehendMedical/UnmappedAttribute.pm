package Paws::ComprehendMedical::UnmappedAttribute;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Paws::ComprehendMedical::Attribute');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::UnmappedAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::UnmappedAttribute object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::UnmappedAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

An attribute that we extracted, but were unable to relate to an entity.

=head1 ATTRIBUTES


=head2 Attribute => L<Paws::ComprehendMedical::Attribute>

  The specific attribute that has been extracted but not mapped to an
entity.


=head2 Type => Str

  The type of the attribute, could be one of the following values:
"MEDICATION", "MEDICAL_CONDITION", "ANATOMY",
"TEST_AND_TREATMENT_PROCEDURE" or "PERSONAL_HEALTH_INFORMATION".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

