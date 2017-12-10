package Paws::Lightsail::InstanceNetworking;
  use Moose;
  has MonthlyTransfer => (is => 'ro', isa => 'Paws::Lightsail::MonthlyTransfer', request_name => 'monthlyTransfer', traits => ['NameInRequest']);
  has Ports => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::InstancePortInfo]', request_name => 'ports', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceNetworking

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceNetworking object:

  $service_obj->Method(Att1 => { MonthlyTransfer => $value, ..., Ports => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceNetworking object:

  $result = $service_obj->Method(...);
  $result->Att1->MonthlyTransfer

=head1 DESCRIPTION

Describes monthly data transfer rates and port information for an
instance.

=head1 ATTRIBUTES


=head2 MonthlyTransfer => L<Paws::Lightsail::MonthlyTransfer>

  The amount of data in GB allocated for monthly data transfers.


=head2 Ports => ArrayRef[L<Paws::Lightsail::InstancePortInfo>]

  An array of key-value pairs containing information about the ports on
the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

