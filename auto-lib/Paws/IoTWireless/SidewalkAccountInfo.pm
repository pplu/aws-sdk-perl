# Generated by default/object.tt
package Paws::IoTWireless::SidewalkAccountInfo;
  use Moose;
  has AmazonId => (is => 'ro', isa => 'Str');
  has AppServerPrivateKey => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::SidewalkAccountInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTWireless::SidewalkAccountInfo object:

  $service_obj->Method(Att1 => { AmazonId => $value, ..., AppServerPrivateKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTWireless::SidewalkAccountInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonId

=head1 DESCRIPTION

Information about a Sidewalk account.

=head1 ATTRIBUTES


=head2 AmazonId => Str

The Sidewalk Amazon ID.


=head2 AppServerPrivateKey => Str

The Sidewalk application server private key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

