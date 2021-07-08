
package Paws::SageMaker::ListActions;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has SourceUri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListActionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListActions - Arguments for method ListActions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListActions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListActions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListActionsResponse = $api . sagemaker->ListActions(
      ActionType    => 'MyString256',            # OPTIONAL
      CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NextToken     => 'MyNextToken',            # OPTIONAL
      SortBy        => 'Name',                   # OPTIONAL
      SortOrder     => 'Ascending',              # OPTIONAL
      SourceUri     => 'MySourceUri',            # OPTIONAL
    );

    # Results:
    my $ActionSummaries = $ListActionsResponse->ActionSummaries;
    my $NextToken       = $ListActionsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListActions>

=head1 ATTRIBUTES


=head2 ActionType => Str

A filter that returns only actions of the specified type.



=head2 CreatedAfter => Str

A filter that returns only actions created on or after the specified
time.



=head2 CreatedBefore => Str

A filter that returns only actions created on or before the specified
time.



=head2 MaxResults => Int

The maximum number of actions to return in the response. The default
value is 10.



=head2 NextToken => Str

If the previous call to C<ListActions> didn't return the full set of
actions, the call returns a token for getting the next set of actions.



=head2 SortBy => Str

The property used to sort results. The default value is
C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order. The default value is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 SourceUri => Str

A filter that returns only actions with the specified source URI.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListActions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

