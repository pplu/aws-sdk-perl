# Generated from default/object.tt
package Paws::AlexaForBusiness::SkillsStoreSkill;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SkillDetails/;
  has IconUrl => (is => 'ro', isa => Str);
  has SampleUtterances => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ShortDescription => (is => 'ro', isa => Str);
  has SkillDetails => (is => 'ro', isa => AlexaForBusiness_SkillDetails);
  has SkillId => (is => 'ro', isa => Str);
  has SkillName => (is => 'ro', isa => Str);
  has SupportsLinking => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SkillDetails' => {
                                   'type' => 'AlexaForBusiness_SkillDetails',
                                   'class' => 'Paws::AlexaForBusiness::SkillDetails'
                                 },
               'SkillName' => {
                                'type' => 'Str'
                              },
               'SampleUtterances' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'IconUrl' => {
                              'type' => 'Str'
                            },
               'SkillId' => {
                              'type' => 'Str'
                            },
               'ShortDescription' => {
                                       'type' => 'Str'
                                     },
               'SupportsLinking' => {
                                      'type' => 'Bool'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SkillsStoreSkill

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::SkillsStoreSkill object:

  $service_obj->Method(Att1 => { IconUrl => $value, ..., SupportsLinking => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::SkillsStoreSkill object:

  $result = $service_obj->Method(...);
  $result->Att1->IconUrl

=head1 DESCRIPTION

The detailed information about an Alexa skill.

=head1 ATTRIBUTES


=head2 IconUrl => Str

  The URL where the skill icon resides.


=head2 SampleUtterances => ArrayRef[Str|Undef]

  Sample utterances that interact with the skill.


=head2 ShortDescription => Str

  Short description about the skill.


=head2 SkillDetails => AlexaForBusiness_SkillDetails

  Information about the skill.


=head2 SkillId => Str

  The ARN of the skill.


=head2 SkillName => Str

  The name of the skill.


=head2 SupportsLinking => Bool

  Linking support for a skill.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

