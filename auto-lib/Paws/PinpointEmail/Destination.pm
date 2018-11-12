package Paws::PinpointEmail::Destination;
  use Moose;
  has BccAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CcAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ToAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::Destination object:

  $service_obj->Method(Att1 => { BccAddresses => $value, ..., ToAddresses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->BccAddresses

=head1 DESCRIPTION

An object that describes the recipients for an email.

=head1 ATTRIBUTES


=head2 BccAddresses => ArrayRef[Str|Undef]

  An array that contains the email addresses of the "BCC" (blind carbon
copy) recipients for the email.


=head2 CcAddresses => ArrayRef[Str|Undef]

  An array that contains the email addresses of the "CC" (carbon copy)
recipients for the email.


=head2 ToAddresses => ArrayRef[Str|Undef]

  An array that contains the email addresses of the "To" recipients for
the email.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

