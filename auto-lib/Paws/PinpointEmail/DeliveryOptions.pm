package Paws::PinpointEmail::DeliveryOptions;
  use Moose;
  has SendingPoolName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::DeliveryOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::DeliveryOptions object:

  $service_obj->Method(Att1 => { SendingPoolName => $value, ..., SendingPoolName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::DeliveryOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->SendingPoolName

=head1 DESCRIPTION

Used to associate a configuration set with a dedicated IP pool.

=head1 ATTRIBUTES


=head2 SendingPoolName => Str

  The name of the dedicated IP pool that you want to associate with the
configuration set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

