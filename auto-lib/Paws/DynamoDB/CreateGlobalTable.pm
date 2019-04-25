
package Paws::DynamoDB::CreateGlobalTable;
  use Moose;
  has GlobalTableName => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroup => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::Replica]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlobalTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::CreateGlobalTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::CreateGlobalTable - Arguments for method CreateGlobalTable on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlobalTable on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method CreateGlobalTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlobalTable.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $CreateGlobalTableOutput = $dynamodb->CreateGlobalTable(
      GlobalTableName  => 'MyTableName',
      ReplicationGroup => [
        {
          RegionName => 'MyRegionName',    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $GlobalTableDescription =
      $CreateGlobalTableOutput->GlobalTableDescription;

    # Returns a L<Paws::DynamoDB::CreateGlobalTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/CreateGlobalTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalTableName => Str

The global table name.



=head2 B<REQUIRED> ReplicationGroup => ArrayRef[L<Paws::DynamoDB::Replica>]

The regions where the global table needs to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlobalTable in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

