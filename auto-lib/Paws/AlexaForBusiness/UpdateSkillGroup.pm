
package Paws::AlexaForBusiness::UpdateSkillGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has SkillGroupArn => (is => 'ro', isa => 'Str');
  has SkillGroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSkillGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateSkillGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateSkillGroup - Arguments for method UpdateSkillGroup on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSkillGroup on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateSkillGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSkillGroup.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateSkillGroupResponse = $a4b->UpdateSkillGroup(
      Description    => 'MySkillGroupDescription',    # OPTIONAL
      SkillGroupArn  => 'MyArn',                      # OPTIONAL
      SkillGroupName => 'MySkillGroupName',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateSkillGroup>

=head1 ATTRIBUTES


=head2 Description => Str

The updated description for the skill group.



=head2 SkillGroupArn => Str

The ARN of the skill group to update.



=head2 SkillGroupName => Str

The updated name for the skill group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSkillGroup in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

