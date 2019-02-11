
package Paws::SSM::GetInventory;
  use Moose;
  has Aggregators => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryAggregator]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResultAttributes => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ResultAttribute]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInventory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetInventoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetInventory - Arguments for method GetInventory on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInventory on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetInventory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInventory.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetInventoryResult = $ssm->GetInventory(
      Aggregators => [
        {
          Aggregators => <InventoryAggregatorList>,
          Expression =>
            'MyInventoryAggregatorExpression',    # min: 1, max: 1000; OPTIONAL
          Groups => [
            {
              Filters => [
                {
                  Key => 'MyInventoryFilterKey',    # min: 1, max: 200
                  Values => [ 'MyInventoryFilterValue', ... ], # min: 1, max: 40
                  Type   => 'Equal'
                  , # values: Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists; OPTIONAL
                },
                ...
              ],    # min: 1, max: 5
              Name => 'MyInventoryGroupName',    # min: 1, max: 200

            },
            ...
          ],                                     # min: 1, max: 10; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      Filters => [
        {
          Key    => 'MyInventoryFilterKey',               # min: 1, max: 200
          Values => [ 'MyInventoryFilterValue', ... ],    # min: 1, max: 40
          Type   => 'Equal'
          , # values: Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults       => 1,                # OPTIONAL
      NextToken        => 'MyNextToken',    # OPTIONAL
      ResultAttributes => [
        {
          TypeName => 'MyInventoryItemTypeName',    # min: 1, max: 100

        },
        ...
      ],                                            # OPTIONAL
    );

    # Results:
    my $Entities  = $GetInventoryResult->Entities;
    my $NextToken = $GetInventoryResult->NextToken;

    # Returns a L<Paws::SSM::GetInventoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetInventory>

=head1 ATTRIBUTES


=head2 Aggregators => ArrayRef[L<Paws::SSM::InventoryAggregator>]

Returns counts of inventory types based on one or more expressions. For
example, if you aggregate by using an expression that uses the
C<AWS:InstanceInformation.PlatformType> type, you can see a count of
how many Windows and Linux instances exist in your inventoried fleet.



=head2 Filters => ArrayRef[L<Paws::SSM::InventoryFilter>]

One or more filters. Use a filter to return a more specific list of
results.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 ResultAttributes => ArrayRef[L<Paws::SSM::ResultAttribute>]

The list of inventory item types to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInventory in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

