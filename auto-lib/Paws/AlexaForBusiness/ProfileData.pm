package Paws::AlexaForBusiness::ProfileData;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has DistanceUnit => (is => 'ro', isa => 'Str');
  has IsDefault => (is => 'ro', isa => 'Bool');
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ProfileName => (is => 'ro', isa => 'Str');
  has TemperatureUnit => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has WakeWord => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ProfileData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::ProfileData object:

  $service_obj->Method(Att1 => { Address => $value, ..., WakeWord => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::ProfileData object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

The data of a room profile.

=head1 ATTRIBUTES


=head2 Address => Str

  The address of a room profile.


=head2 DistanceUnit => Str

  The distance unit of a room profile.


=head2 IsDefault => Bool

  Retrieves if the profile data is default or not.


=head2 ProfileArn => Str

  The ARN of a room profile.


=head2 ProfileName => Str

  The name of a room profile.


=head2 TemperatureUnit => Str

  The temperature unit of a room profile.


=head2 Timezone => Str

  The timezone of a room profile.


=head2 WakeWord => Str

  The wake word of a room profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

