package Paws::GameLift::VpcPeeringConnectionStatus;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::VpcPeeringConnectionStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::VpcPeeringConnectionStatus object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::VpcPeeringConnectionStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Represents status information for a VPC peering connection. Status is
associated with a VpcPeeringConnection object. Status codes and
messages are provided from EC2 (see VpcPeeringConnectionStateReason
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html)).
Connection status information is also communicated as a fleet Event.

=head1 ATTRIBUTES


=head2 Code => Str

  Code indicating the status of a VPC peering connection.


=head2 Message => Str

  Additional messaging associated with the connection status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

