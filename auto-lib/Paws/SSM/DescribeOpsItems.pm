
package Paws::SSM::DescribeOpsItems;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OpsItemFilters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsItemFilter]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOpsItems');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeOpsItemsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeOpsItems - Arguments for method DescribeOpsItems on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOpsItems on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeOpsItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOpsItems.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeOpsItemsResponse = $ssm->DescribeOpsItems(
      MaxResults     => 1,             # OPTIONAL
      NextToken      => 'MyString',    # OPTIONAL
      OpsItemFilters => [
        {
          Key => 'Status'
          , # values: Status, CreatedBy, Source, Priority, Title, OpsItemId, CreatedTime, LastModifiedTime, OperationalData, OperationalDataKey, OperationalDataValue, ResourceId, AutomationId, Category, Severity
          Operator => 'Equal',  # values: Equal, Contains, GreaterThan, LessThan
          Values => [ 'MyOpsItemFilterValue', ... ],

        },
        ...
      ],                        # OPTIONAL
    );

    # Results:
    my $NextToken        = $DescribeOpsItemsResponse->NextToken;
    my $OpsItemSummaries = $DescribeOpsItemsResponse->OpsItemSummaries;

    # Returns a L<Paws::SSM::DescribeOpsItemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeOpsItems>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 OpsItemFilters => ArrayRef[L<Paws::SSM::OpsItemFilter>]

One or more filters to limit the reponse.

=over

=item *

Key: CreatedTime

Operations: GreaterThan, LessThan

=item *

Key: LastModifiedBy

Operations: Contains, Equals

=item *

Key: LastModifiedTime

Operations: GreaterThan, LessThan

=item *

Key: Priority

Operations: Equals

=item *

Key: Source

Operations: Contains, Equals

=item *

Key: Status

Operations: Equals

=item *

Key: Title

Operations: Contains

=item *

Key: OperationalData*

Operations: Equals

=item *

Key: OperationalDataKey

Operations: Equals

=item *

Key: OperationalDataValue

Operations: Equals, Contains

=item *

Key: OpsItemId

Operations: Equals

=item *

Key: ResourceId

Operations: Contains

=item *

Key: AutomationId

Operations: Equals

=back

*If you filter the response by using the OperationalData operator,
specify a key-value pair by using the following JSON format:
{"key":"key_name","value":"a_value"}




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOpsItems in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

