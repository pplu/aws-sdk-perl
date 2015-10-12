package Paws::RDS::DBSubnetGroup;
  use Moose;
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSubnetGroup

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBSubnetGroup object:

  $service_obj->Method(Att1 => { DBSubnetGroupDescription => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBSubnetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSubnetGroupDescription

=head1 ATTRIBUTES

=head2 DBSubnetGroupDescription => Str

  Provides the description of the DB subnet group.

=head2 DBSubnetGroupName => Str

  Specifies the name of the DB subnet group.

=head2 SubnetGroupStatus => Str

  Provides the status of the DB subnet group.

=head2 Subnets => ArrayRef[Paws::RDS::Subnet]

  Contains a list of Subnet elements.

=head2 VpcId => Str

  Provides the VpcId of the DB subnet group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

