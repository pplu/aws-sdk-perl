package Paws::PinpointEmail::MessageTag;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::MessageTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::MessageTag object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::MessageTag object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contains the name and value of a tag that you apply to an email. You
can use message tags when you publish email sending events.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the message tag. The message tag name has to meet the
following criteria:

=over

=item *

It can only contain ASCII letters (aE<ndash>z, AE<ndash>Z), numbers
(0E<ndash>9), underscores (_), or dashes (-).

=item *

It can contain no more than 256 characters.

=back



=head2 B<REQUIRED> Value => Str

  The value of the message tag. The message tag value has to meet the
following criteria:

=over

=item *

It can only contain ASCII letters (aE<ndash>z, AE<ndash>Z), numbers
(0E<ndash>9), underscores (_), or dashes (-).

=item *

It can contain no more than 256 characters.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

