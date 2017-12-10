package Paws::EC2::SpotPlacement;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotPlacement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotPlacement object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Tenancy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotPlacement object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone.

[Spot Fleet only] To specify multiple Availability Zones, separate them
using commas; for example, "us-west-2a, us-west-2b".


=head2 GroupName => Str

  The name of the placement group.


=head2 Tenancy => Str

  The tenancy of the instance (if the instance is running in a VPC). An
instance with a tenancy of C<dedicated> runs on single-tenant hardware.
The C<host> tenancy is not supported for Spot Instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
