package Paws::DAX::Subnet;
  use Moose;
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Str');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::Subnet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::Subnet object:

  $service_obj->Method(Att1 => { SubnetAvailabilityZone => $value, ..., SubnetIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::Subnet object:

  $result = $service_obj->Method(...);
  $result->Att1->SubnetAvailabilityZone

=head1 DESCRIPTION

Represents the subnet associated with a DAX cluster. This parameter
refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC)
and used with DAX.

=head1 ATTRIBUTES


=head2 SubnetAvailabilityZone => Str

  The Availability Zone (AZ) for subnet subnet.


=head2 SubnetIdentifier => Str

  The system-assigned identifier for the subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

