
package Paws::SSM::GetOpsSummary;
  use Moose;
  has Aggregators => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsAggregator]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResultAttributes => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsResultAttribute]');
  has SyncName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpsSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetOpsSummaryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetOpsSummary - Arguments for method GetOpsSummary on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOpsSummary on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetOpsSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOpsSummary.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetOpsSummaryResult = $ssm->GetOpsSummary(
      Aggregators => [
        {
          AggregatorType => 'MyOpsAggregatorType',   # min: 1, max: 20; OPTIONAL
          Aggregators    => <OpsAggregatorList>,
          AttributeName  =>
            'MyOpsDataAttributeName',    # min: 1, max: 128; OPTIONAL
          Filters => [
            {
              Key    => 'MyOpsFilterKey',    # min: 1, max: 200
              Values => [
                'MyOpsFilterValue', ...      # max: 256
              ],    # min: 1, max: 40
              Type => 'Equal'
              , # values: Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5; OPTIONAL
          TypeName => 'MyOpsDataTypeName',    # min: 1, max: 100; OPTIONAL
          Values   => {
            'MyOpsAggregatorValueKey' =>
              'MyOpsAggregatorValue',   # key: min: 1, max: 32, value: max: 2048
          },    # max: 5; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Filters => [
        {
          Key    => 'MyOpsFilterKey',    # min: 1, max: 200
          Values => [
            'MyOpsFilterValue', ...      # max: 256
          ],    # min: 1, max: 40
          Type => 'Equal'
          , # values: Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults       => 1,                # OPTIONAL
      NextToken        => 'MyNextToken',    # OPTIONAL
      ResultAttributes => [
        {
          TypeName => 'MyOpsDataTypeName',    # min: 1, max: 100; OPTIONAL

        },
        ...
      ],    # OPTIONAL
      SyncName => 'MyResourceDataSyncName',    # OPTIONAL
    );

    # Results:
    my $Entities  = $GetOpsSummaryResult->Entities;
    my $NextToken = $GetOpsSummaryResult->NextToken;

    # Returns a L<Paws::SSM::GetOpsSummaryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetOpsSummary>

=head1 ATTRIBUTES


=head2 Aggregators => ArrayRef[L<Paws::SSM::OpsAggregator>]

Optional aggregators that return counts of OpsItems based on one or
more expressions.



=head2 Filters => ArrayRef[L<Paws::SSM::OpsFilter>]

Optional filters used to scope down the returned OpsItems.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 ResultAttributes => ArrayRef[L<Paws::SSM::OpsResultAttribute>]

The OpsItem data type to return.



=head2 SyncName => Str

Specify the name of a resource data sync to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOpsSummary in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

