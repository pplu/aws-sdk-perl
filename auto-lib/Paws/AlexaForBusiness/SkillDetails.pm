package Paws::AlexaForBusiness::SkillDetails;
  use Moose;
  has BulletPoints => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeveloperInfo => (is => 'ro', isa => 'Paws::AlexaForBusiness::DeveloperInfo');
  has EndUserLicenseAgreement => (is => 'ro', isa => 'Str');
  has GenericKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InvocationPhrase => (is => 'ro', isa => 'Str');
  has NewInThisVersionBulletPoints => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReleaseDate => (is => 'ro', isa => 'Str');
  has Reviews => (is => 'ro', isa => 'Paws::AlexaForBusiness::Reviews');
  has SkillTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SkillDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::SkillDetails object:

  $service_obj->Method(Att1 => { BulletPoints => $value, ..., SkillTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::SkillDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->BulletPoints

=head1 DESCRIPTION

Granular information about the skill.

=head1 ATTRIBUTES


=head2 BulletPoints => ArrayRef[Str|Undef]

  The details about what the skill supports organized as bullet points.


=head2 DeveloperInfo => L<Paws::AlexaForBusiness::DeveloperInfo>

  The details about the developer that published the skill.


=head2 EndUserLicenseAgreement => Str

  The URL of the end user license agreement.


=head2 GenericKeywords => ArrayRef[Str|Undef]

  The generic keywords associated with the skill that can be used to find
a skill.


=head2 InvocationPhrase => Str

  The phrase used to trigger the skill.


=head2 NewInThisVersionBulletPoints => ArrayRef[Str|Undef]

  The updates added in bullet points.


=head2 ProductDescription => Str

  The description of the product.


=head2 ReleaseDate => Str

  The date when the skill was released.


=head2 Reviews => L<Paws::AlexaForBusiness::Reviews>

  The list of reviews for the skill, including Key and Value pair.


=head2 SkillTypes => ArrayRef[Str|Undef]

  The types of skills.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

