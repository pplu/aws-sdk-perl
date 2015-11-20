package Paws::EMR::PlacementType;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::PlacementType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::PlacementType object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., AvailabilityZone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::PlacementType object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

The Amazon EC2 location for the job flow.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

  The Amazon EC2 Availability Zone for the job flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

