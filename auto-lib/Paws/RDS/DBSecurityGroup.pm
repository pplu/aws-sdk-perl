package Paws::RDS::DBSecurityGroup;
  use Moose;
  has DBSecurityGroupArn => (is => 'ro', isa => 'Str');
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::EC2SecurityGroup]', request_name => 'EC2SecurityGroup', traits => ['NameInRequest']);
  has IPRanges => (is => 'ro', isa => 'ArrayRef[Paws::RDS::IPRange]', request_name => 'IPRange', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBSecurityGroup object:

  $service_obj->Method(Att1 => { DBSecurityGroupArn => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSecurityGroupArn

=head1 DESCRIPTION

Contains the details for an Amazon RDS DB security group.

This data type is used as a response element in the
DescribeDBSecurityGroups action.

=head1 ATTRIBUTES


=head2 DBSecurityGroupArn => Str

  The Amazon Resource Name (ARN) for the DB security group.


=head2 DBSecurityGroupDescription => Str

  Provides the description of the DB security group.


=head2 DBSecurityGroupName => Str

  Specifies the name of the DB security group.


=head2 EC2SecurityGroups => ArrayRef[L<Paws::RDS::EC2SecurityGroup>]

  Contains a list of EC2SecurityGroup elements.


=head2 IPRanges => ArrayRef[L<Paws::RDS::IPRange>]

  Contains a list of IPRange elements.


=head2 OwnerId => Str

  Provides the AWS ID of the owner of a specific DB security group.


=head2 VpcId => Str

  Provides the VpcId of the DB security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

