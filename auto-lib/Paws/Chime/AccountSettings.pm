package Paws::Chime::AccountSettings;
  use Moose;
  has DisableRemoteControl => (is => 'ro', isa => 'Bool');
  has EnableDialOut => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::AccountSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::AccountSettings object:

  $service_obj->Method(Att1 => { DisableRemoteControl => $value, ..., EnableDialOut => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::AccountSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DisableRemoteControl

=head1 DESCRIPTION

Settings related to the Amazon Chime account. This includes settings
that start or stop remote control of shared screens, or start or stop
the dial-out option in the Amazon Chime web application. For more
information about these settings, see Use the Policies Page
(http://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
I<Amazon Chime Administration Guide>.

=head1 ATTRIBUTES


=head2 DisableRemoteControl => Bool

  Setting that stops or starts remote control of shared screens during
meetings.


=head2 EnableDialOut => Bool

  Setting that allows meeting participants to choose the B<Call me at a
phone number> option. For more information, see Join a Meeting without
the Amazon Chime App
(http://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

