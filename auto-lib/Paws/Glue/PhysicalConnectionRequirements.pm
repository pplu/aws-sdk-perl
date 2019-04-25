package Paws::Glue::PhysicalConnectionRequirements;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has SecurityGroupIdList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PhysicalConnectionRequirements

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::PhysicalConnectionRequirements object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::PhysicalConnectionRequirements object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Specifies the physical requirements for a connection.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The connection's availability zone. This field is redundant, since the
specified subnet implies the availability zone to be used. The field
must be populated now, but will be deprecated in the future.


=head2 SecurityGroupIdList => ArrayRef[Str|Undef]

  The security group ID list used by the connection.


=head2 SubnetId => Str

  The subnet ID used by the connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

