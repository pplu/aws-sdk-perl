package Paws::CognitoIdp::ChallengeResponseType;
  use Moose;
  has ChallengeName => (is => 'ro', isa => 'Str');
  has ChallengeResponse => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ChallengeResponseType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::ChallengeResponseType object:

  $service_obj->Method(Att1 => { ChallengeName => $value, ..., ChallengeResponse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::ChallengeResponseType object:

  $result = $service_obj->Method(...);
  $result->Att1->ChallengeName

=head1 DESCRIPTION

The challenge response type.

=head1 ATTRIBUTES


=head2 ChallengeName => Str

  The challenge name


=head2 ChallengeResponse => Str

  The challenge response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

