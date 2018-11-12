package Paws::PinpointEmail::Body;
  use Moose;
  has Html => (is => 'ro', isa => 'Paws::PinpointEmail::Content');
  has Text => (is => 'ro', isa => 'Paws::PinpointEmail::Content');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::Body

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::Body object:

  $service_obj->Method(Att1 => { Html => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::Body object:

  $result = $service_obj->Method(...);
  $result->Att1->Html

=head1 DESCRIPTION

Represents the body of the email message.

=head1 ATTRIBUTES


=head2 Html => L<Paws::PinpointEmail::Content>

  An object that represents the version of the message that is displayed
in email clients that support HTML. HTML messages can include formatted
text, hyperlinks, images, and more.


=head2 Text => L<Paws::PinpointEmail::Content>

  An object that represents the version of the message that is displayed
in email clients that don't support HTML, or clients where the
recipient has disabled HTML rendering.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

