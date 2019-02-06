package Paws::DocDB::DBSubnetGroup;
  use Moose;
  has DBSubnetGroupArn => (is => 'ro', isa => 'Str');
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Subnet]', request_name => 'Subnet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBSubnetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBSubnetGroup object:

  $service_obj->Method(Att1 => { DBSubnetGroupArn => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBSubnetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSubnetGroupArn

=head1 DESCRIPTION

Detailed information about a DB subnet group.

=head1 ATTRIBUTES


=head2 DBSubnetGroupArn => Str

  The Amazon Resource Identifier (ARN) for the DB subnet group.


=head2 DBSubnetGroupDescription => Str

  Provides the description of the DB subnet group.


=head2 DBSubnetGroupName => Str

  The name of the DB subnet group.


=head2 SubnetGroupStatus => Str

  Provides the status of the DB subnet group.


=head2 Subnets => ArrayRef[L<Paws::DocDB::Subnet>]

  Detailed information about one or more subnets within a DB subnet
group.


=head2 VpcId => Str

  Provides the virtual private cloud (VPC) ID of the DB subnet group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

