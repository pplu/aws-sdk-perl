
package Paws::Neptune::CreateDBClusterParameterGroup;
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::CreateDBClusterParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateDBClusterParameterGroup - Arguments for method CreateDBClusterParameterGroup on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBClusterParameterGroup on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method CreateDBClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBClusterParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
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

    # Returns a L<Paws::Neptune::CreateDBClusterParameterGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterParameterGroupName => Str

The name of the DB cluster parameter group.

Constraints:

=over

=item *

Must match the name of an existing DBClusterParameterGroup.

=back

This value is stored as a lowercase string.



=head2 B<REQUIRED> DBParameterGroupFamily => Str

The DB cluster parameter group family name. A DB cluster parameter
group can be associated with one and only one DB cluster parameter
group family, and can be applied only to a DB cluster running a
database engine and engine version compatible with that DB cluster
parameter group family.



=head2 B<REQUIRED> Description => Str

The description for the DB cluster parameter group.



=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBClusterParameterGroup in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

