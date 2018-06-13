
package Paws::DynamoDB::UpdateGlobalTable;
  use Moose;
  has GlobalTableName => (is => 'ro', isa => 'Str', required => 1);
  has ReplicaUpdates => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateGlobalTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateGlobalTable - Arguments for method UpdateGlobalTable on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalTable on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateGlobalTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalTable.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $UpdateGlobalTableOutput = $dynamodb->UpdateGlobalTable(
      GlobalTableName => 'MyTableName',
      ReplicaUpdates  => [
        {
          Create => {
            RegionName => 'MyRegionName',

          },    # OPTIONAL
          Delete => {
            RegionName => 'MyRegionName',

          },    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $GlobalTableDescription =
      $UpdateGlobalTableOutput->GlobalTableDescription;

    # Returns a L<Paws::DynamoDB::UpdateGlobalTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateGlobalTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalTableName => Str

The global table name.



=head2 B<REQUIRED> ReplicaUpdates => ArrayRef[L<Paws::DynamoDB::ReplicaUpdate>]

A list of regions that should be added or removed from the global
table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalTable in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

