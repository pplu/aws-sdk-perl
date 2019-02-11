
package Paws::DocDB::CreateDBClusterParameterGroup;
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::CreateDBClusterParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CreateDBClusterParameterGroup - Arguments for method CreateDBClusterParameterGroup on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBClusterParameterGroup on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CreateDBClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBClusterParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CreateDBClusterParameterGroupResult =
      $rds->CreateDBClusterParameterGroup(
      DBClusterParameterGroupName => 'MyString',
      DBParameterGroupFamily      => 'MyString',
      Description                 => 'MyString',
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $DBClusterParameterGroup =
      $CreateDBClusterParameterGroupResult->DBClusterParameterGroup;

    # Returns a L<Paws::DocDB::CreateDBClusterParameterGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterParameterGroupName => Str

The name of the DB cluster parameter group.

Constraints:

=over

=item *

Must match the name of an existing C<DBClusterParameterGroup>.

=back

This value is stored as a lowercase string.



=head2 B<REQUIRED> DBParameterGroupFamily => Str

The DB cluster parameter group family name.



=head2 B<REQUIRED> Description => Str

The description for the DB cluster parameter group.



=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the DB cluster parameter group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBClusterParameterGroup in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

