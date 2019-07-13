package Paws::PinpointEmail::IspPlacement;
  use Moose;
  has IspName => (is => 'ro', isa => 'Str');
  has PlacementStatistics => (is => 'ro', isa => 'Paws::PinpointEmail::PlacementStatistics');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::IspPlacement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::IspPlacement object:

  $service_obj->Method(Att1 => { IspName => $value, ..., PlacementStatistics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::IspPlacement object:

  $result = $service_obj->Method(...);
  $result->Att1->IspName

=head1 DESCRIPTION

An object that describes how email sent during the predictive inbox
placement test was handled by a certain email provider.

=head1 ATTRIBUTES


=head2 IspName => Str

  The name of the email provider that the inbox placement data applies
to.


=head2 PlacementStatistics => L<Paws::PinpointEmail::PlacementStatistics>

  An object that contains inbox placement metrics for a specific email
provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

