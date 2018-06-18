
package Paws::SSM::ListComplianceItems;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ComplianceStringFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComplianceItems');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListComplianceItemsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListComplianceItems - Arguments for method ListComplianceItems on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComplianceItems on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListComplianceItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComplianceItems.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListComplianceItemsResult = $ssm->ListComplianceItems(
      Filters => [
        {
          Key  => 'MyComplianceStringFilterKey',    # min: 1, max: 200; OPTIONAL
          Type => 'EQUAL'
          , # values: EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN; OPTIONAL
          Values => [ 'MyComplianceFilterValue', ... ]
          ,    # min: 1, max: 20; OPTIONAL
        },
        ...
      ],       # OPTIONAL
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
      ResourceIds => [
        'MyComplianceResourceId', ...    # min: 1, max: 100
      ],                                 # OPTIONAL
      ResourceTypes => [
        'MyComplianceResourceType', ...    # min: 1, max: 50
      ],                                   # OPTIONAL
    );

    # Results:
    my $ComplianceItems = $ListComplianceItemsResult->ComplianceItems;
    my $NextToken       = $ListComplianceItemsResult->NextToken;

    # Returns a L<Paws::SSM::ListComplianceItemsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListComplianceItems>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::ComplianceStringFilter>]

One or more compliance filters. Use a filter to return a more specific
list of results.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 ResourceIds => ArrayRef[Str|Undef]

The ID for the resources from which to get compliance information.
Currently, you can only specify one resource ID.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The type of resource from which to get compliance information.
Currently, the only supported resource type is C<ManagedInstance>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComplianceItems in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

