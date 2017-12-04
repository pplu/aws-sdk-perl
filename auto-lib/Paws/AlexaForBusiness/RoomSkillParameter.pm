package Paws::AlexaForBusiness::RoomSkillParameter;
  use Moose;
  has ParameterKey => (is => 'ro', isa => 'Str', required => 1);
  has ParameterValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::RoomSkillParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::RoomSkillParameter object:

  $service_obj->Method(Att1 => { ParameterKey => $value, ..., ParameterValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::RoomSkillParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterKey

=head1 DESCRIPTION

A skill parameter associated with a room.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterKey => Str

  The parameter key of a room skill parameter. ParameterKey is an
enumerated type that only takes E<ldquo>DEFAULTE<rdquo> or
E<ldquo>SCOPEE<rdquo> as valid values.


=head2 B<REQUIRED> ParameterValue => Str

  The parameter value of a room skill parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

