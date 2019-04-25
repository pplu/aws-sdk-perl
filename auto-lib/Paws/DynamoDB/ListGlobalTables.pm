
package Paws::DynamoDB::ListGlobalTables;
  use Moose;
  has ExclusiveStartGlobalTableName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has RegionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGlobalTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ListGlobalTablesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListGlobalTables - Arguments for method ListGlobalTables on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGlobalTables on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ListGlobalTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGlobalTables.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ListGlobalTablesOutput = $dynamodb->ListGlobalTables(
      ExclusiveStartGlobalTableName => 'MyTableName',     # OPTIONAL
      Limit                         => 1,                 # OPTIONAL
      RegionName                    => 'MyRegionName',    # OPTIONAL
    );

    # Results:
    my $GlobalTables = $ListGlobalTablesOutput->GlobalTables;
    my $LastEvaluatedGlobalTableName =
      $ListGlobalTablesOutput->LastEvaluatedGlobalTableName;

    # Returns a L<Paws::DynamoDB::ListGlobalTablesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ListGlobalTables>

=head1 ATTRIBUTES


=head2 ExclusiveStartGlobalTableName => Str

The first global table name that this operation will evaluate.



=head2 Limit => Int

The maximum number of table names to return.



=head2 RegionName => Str

Lists the global tables in a specific region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGlobalTables in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

