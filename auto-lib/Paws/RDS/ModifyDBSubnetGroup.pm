
package Paws::RDS::ModifyDBSubnetGroup;
  use Moose;
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBSubnetGroup - Arguments for method ModifyDBSubnetGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBSubnetGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBSubnetGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To change DB subnet group settings
    # This example changes the specified setting for the specified DB subnet
    # group.
    my $ModifyDBSubnetGroupResult = $rds->ModifyDBSubnetGroup(
      {
        'DBSubnetGroupName' => 'mydbsubnetgroup',
        'SubnetIds'         => [ 'subnet-70e1975a', 'subnet-747a5c49' ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBSubnetGroup>

=head1 ATTRIBUTES


=head2 DBSubnetGroupDescription => Str

The description for the DB subnet group.



=head2 B<REQUIRED> DBSubnetGroupName => Str

The name for the DB subnet group. This value is stored as a lowercase
string. You can't modify the default subnet group.

Constraints: Must match the name of an existing DBSubnetGroup. Must not
be default.

Example: C<mySubnetgroup>



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The EC2 subnet IDs for the DB subnet group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBSubnetGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

