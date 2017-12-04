package Paws::EC2::MovingAddressStatus;
  use Moose;
  has MoveStatus => (is => 'ro', isa => 'Str', request_name => 'moveStatus', traits => ['NameInRequest']);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MovingAddressStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::MovingAddressStatus object:

  $service_obj->Method(Att1 => { MoveStatus => $value, ..., PublicIp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::MovingAddressStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->MoveStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 MoveStatus => Str

  The status of the Elastic IP address that's being moved to the EC2-VPC
platform, or restored to the EC2-Classic platform.


=head2 PublicIp => Str

  The Elastic IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
