package Paws::AlexaForBusiness::RequireCheckIn;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has ReleaseAfterMinutes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::RequireCheckIn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::RequireCheckIn object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., ReleaseAfterMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::RequireCheckIn object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Settings for the require check in feature that are applied to a room
profile. Require check in allows a meeting roomE<rsquo>s Alexa or AVS
device to prompt the user to check in; otherwise, the room will be
released.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Whether require check in is enabled or not.


=head2 ReleaseAfterMinutes => Int

  Duration between 5 and 20 minutes to determine when to release the room
if it's not checked into.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

