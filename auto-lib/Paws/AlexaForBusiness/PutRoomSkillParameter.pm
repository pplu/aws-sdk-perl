
package Paws::AlexaForBusiness::PutRoomSkillParameter;
  use Moose;
  has RoomArn => (is => 'ro', isa => 'Str');
  has RoomSkillParameter => (is => 'ro', isa => 'Paws::AlexaForBusiness::RoomSkillParameter', required => 1);
  has SkillId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRoomSkillParameter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::PutRoomSkillParameterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::PutRoomSkillParameter - Arguments for method PutRoomSkillParameter on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRoomSkillParameter on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method PutRoomSkillParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRoomSkillParameter.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $PutRoomSkillParameterResponse = $a4b->PutRoomSkillParameter(
      RoomSkillParameter => {
        ParameterKey   => 'MyRoomSkillParameterKey',      # min: 1, max: 256
        ParameterValue => 'MyRoomSkillParameterValue',    # min: 1, max: 512

      },
      SkillId => 'MySkillId',
      RoomArn => 'MyArn',                                 # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/PutRoomSkillParameter>

=head1 ATTRIBUTES


=head2 RoomArn => Str

The ARN of the room associated with the room skill parameter. Required.



=head2 B<REQUIRED> RoomSkillParameter => L<Paws::AlexaForBusiness::RoomSkillParameter>

The updated room skill parameter. Required.



=head2 B<REQUIRED> SkillId => Str

The ARN of the skill associated with the room skill parameter.
Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRoomSkillParameter in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

