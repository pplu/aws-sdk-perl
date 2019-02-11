package Paws::PinpointEmail::SendingOptions;
  use Moose;
  has SendingEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::SendingOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::SendingOptions object:

  $service_obj->Method(Att1 => { SendingEnabled => $value, ..., SendingEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::SendingOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->SendingEnabled

=head1 DESCRIPTION

Used to enable or disable email sending for messages that use this
configuration set in the current AWS Region.

=head1 ATTRIBUTES


=head2 SendingEnabled => Bool

  If C<true>, email sending is enabled for the configuration set. If
C<false>, email sending is disabled for the configuration set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

