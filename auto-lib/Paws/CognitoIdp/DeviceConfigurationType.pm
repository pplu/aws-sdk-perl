package Paws::CognitoIdp::DeviceConfigurationType;
  use Moose;
  has ChallengeRequiredOnNewDevice => (is => 'ro', isa => 'Bool');
  has DeviceOnlyRememberedOnUserPrompt => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DeviceConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::DeviceConfigurationType object:

  $service_obj->Method(Att1 => { ChallengeRequiredOnNewDevice => $value, ..., DeviceOnlyRememberedOnUserPrompt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::DeviceConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->ChallengeRequiredOnNewDevice

=head1 DESCRIPTION

The configuration for the user pool's device tracking.

=head1 ATTRIBUTES


=head2 ChallengeRequiredOnNewDevice => Bool

  Indicates whether a challenge is required on a new device. Only
applicable to a new device.


=head2 DeviceOnlyRememberedOnUserPrompt => Bool

  If true, a device is only remembered on user prompt.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

