
package Paws::AlexaForBusiness::GetRoomSkillParameter;
  use Moose;
  has ParameterKey => (is => 'ro', isa => 'Str', required => 1);
  has RoomArn => (is => 'ro', isa => 'Str');
  has SkillId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRoomSkillParameter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::GetRoomSkillParameterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetRoomSkillParameter - Arguments for method GetRoomSkillParameter on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRoomSkillParameter on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method GetRoomSkillParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRoomSkillParameter.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $GetRoomSkillParameterResponse = $a4b->GetRoomSkillParameter(
      ParameterKey => 'MyRoomSkillParameterKey',
      SkillId      => 'MySkillId',
      RoomArn      => 'MyArn',                     # OPTIONAL
    );

    # Results:
    my $RoomSkillParameter = $GetRoomSkillParameterResponse->RoomSkillParameter;

    # Returns a L<Paws::AlexaForBusiness::GetRoomSkillParameterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/GetRoomSkillParameter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterKey => Str

The room skill parameter key for which to get details. Required.



=head2 RoomArn => Str

The ARN of the room from which to get the room skill parameter details.



=head2 B<REQUIRED> SkillId => Str

The ARN of the skill from which to get the room skill parameter
details. Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRoomSkillParameter in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

