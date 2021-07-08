
package Paws::SSM::ListOpsItemRelatedItems;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsItemRelatedItemsFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OpsItemId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpsItemRelatedItems');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListOpsItemRelatedItemsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListOpsItemRelatedItems - Arguments for method ListOpsItemRelatedItems on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOpsItemRelatedItems on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListOpsItemRelatedItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOpsItemRelatedItems.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListOpsItemRelatedItemsResponse = $ssm->ListOpsItemRelatedItems(
      Filters => [
        {
          Key =>
            'ResourceType',   # values: ResourceType, AssociationId, ResourceUri
          Operator => 'Equal',    # values: Equal
          Values   => [ 'MyOpsItemRelatedItemsFilterValue', ... ],

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyString',       # OPTIONAL
      OpsItemId  => 'MyOpsItemId',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListOpsItemRelatedItemsResponse->NextToken;
    my $Summaries = $ListOpsItemRelatedItemsResponse->Summaries;

    # Returns a L<Paws::SSM::ListOpsItemRelatedItemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListOpsItemRelatedItems>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::OpsItemRelatedItemsFilter>]

One or more OpsItem filters. Use a filter to return a more specific
list of results.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 OpsItemId => Str

The ID of the OpsItem for which you want to list all related-item
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOpsItemRelatedItems in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

