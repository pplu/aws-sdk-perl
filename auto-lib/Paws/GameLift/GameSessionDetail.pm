# Generated from default/object.tt
package Paws::GameLift::GameSessionDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_GameSession/;
  has GameSession => (is => 'ro', isa => GameLift_GameSession);
  has ProtectionPolicy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProtectionPolicy' => {
                                       'type' => 'Str'
                                     },
               'GameSession' => {
                                  'type' => 'GameLift_GameSession',
                                  'class' => 'Paws::GameLift::GameSession'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSessionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSessionDetail object:

  $service_obj->Method(Att1 => { GameSession => $value, ..., ProtectionPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSessionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->GameSession

=head1 DESCRIPTION

A game session's properties plus the protection policy currently in
force.

=head1 ATTRIBUTES


=head2 GameSession => GameLift_GameSession

  Object that describes a game session.


=head2 ProtectionPolicy => Str

  Current status of protection for the game session.

=over

=item *

B<NoProtection> -- The game session can be terminated during a
scale-down event.

=item *

B<FullProtection> -- If the game session is in an C<ACTIVE> status, it
cannot be terminated during a scale-down event.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

