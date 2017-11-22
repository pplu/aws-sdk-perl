package Paws::RDS::DBSubnetGroup;
  use Moose;
  has DBSubnetGroupArn => (is => 'ro', isa => 'Str');
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Subnet]', request_name => 'Subnet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSubnetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBSubnetGroup object:

  $service_obj->Method(Att1 => { DBSubnetGroupArn => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBSubnetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSubnetGroupArn

=head1 DESCRIPTION

Contains the details of an Amazon RDS DB subnet group.

This data type is used as a response element in the
DescribeDBSubnetGroups action.

=head1 ATTRIBUTES


=head2 DBSubnetGroupArn => Str

  The Amazon Resource Name (ARN) for the DB subnet group.


=head2 DBSubnetGroupDescription => Str

  Provides the description of the DB subnet group.


=head2 DBSubnetGroupName => Str

  The name of the DB subnet group.


=head2 SubnetGroupStatus => Str

  Provides the status of the DB subnet group.


=head2 Subnets => ArrayRef[L<Paws::RDS::Subnet>]

  Contains a list of Subnet elements.


=head2 VpcId => Str

  Provides the VpcId of the DB subnet group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

