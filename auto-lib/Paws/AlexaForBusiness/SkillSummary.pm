package Paws::AlexaForBusiness::SkillSummary;
  use Moose;
  has EnablementType => (is => 'ro', isa => 'Str');
  has SkillId => (is => 'ro', isa => 'Str');
  has SkillName => (is => 'ro', isa => 'Str');
  has SkillType => (is => 'ro', isa => 'Str');
  has SupportsLinking => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SkillSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::SkillSummary object:

  $service_obj->Method(Att1 => { EnablementType => $value, ..., SupportsLinking => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::SkillSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EnablementType

=head1 DESCRIPTION

The summary of skills.

=head1 ATTRIBUTES


=head2 EnablementType => Str

  Whether the skill is enabled under the user's account, or if it
requires linking to be used.


=head2 SkillId => Str

  The ARN of the skill summary.


=head2 SkillName => Str

  The name of the skill.


=head2 SkillType => Str

  Whether the skill is publicly available or is a private skill.


=head2 SupportsLinking => Bool

  Linking support for a skill.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

