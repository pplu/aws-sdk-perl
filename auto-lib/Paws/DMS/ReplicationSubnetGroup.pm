package Paws::DMS::ReplicationSubnetGroup;
  use Moose;
  has ReplicationSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has ReplicationSubnetGroupIdentifier => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationSubnetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationSubnetGroup object:

  $service_obj->Method(Att1 => { ReplicationSubnetGroupDescription => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationSubnetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplicationSubnetGroupDescription

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ReplicationSubnetGroupDescription => Str

  The description of the replication subnet group.


=head2 ReplicationSubnetGroupIdentifier => Str

  The identifier of the replication instance subnet group.


=head2 SubnetGroupStatus => Str

  The status of the subnet group.


=head2 Subnets => ArrayRef[L<Paws::DMS::Subnet>]

  The subnets that are in the subnet group.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

