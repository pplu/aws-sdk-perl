package Paws::PinpointEmail::BlacklistEntry;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ListingTime => (is => 'ro', isa => 'Str');
  has RblName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::BlacklistEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::BlacklistEntry object:

  $service_obj->Method(Att1 => { Description => $value, ..., RblName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::BlacklistEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

An object that contains information about a blacklisting event that
impacts one of the dedicated IP addresses that is associated with your
account.

=head1 ATTRIBUTES


=head2 Description => Str

  Additional information about the blacklisting event, as provided by the
blacklist maintainer.


=head2 ListingTime => Str

  The time when the blacklisting event occurred, shown in Unix time
format.


=head2 RblName => Str

  The name of the blacklist that the IP address appears on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

