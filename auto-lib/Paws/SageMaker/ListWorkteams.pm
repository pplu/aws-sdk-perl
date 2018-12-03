
package Paws::SageMaker::ListWorkteams;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkteams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListWorkteamsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListWorkteams - Arguments for method ListWorkteams on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkteams on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListWorkteams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkteams.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListWorkteamsResponse = $api . sagemaker->ListWorkteams(
      MaxResults   => 1,                   # OPTIONAL
      NameContains => 'MyWorkteamName',    # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
      SortBy       => 'Name',              # OPTIONAL
      SortOrder    => 'Ascending',         # OPTIONAL
    );

    # Results:
    my $NextToken = $ListWorkteamsResponse->NextToken;
    my $Workteams = $ListWorkteamsResponse->Workteams;

    # Returns a L<Paws::SageMaker::ListWorkteamsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListWorkteams>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of work teams to return in each page of the
response.



=head2 NameContains => Str

A string in the work team's name. This filter returns only work teams
whose name contains the specified string.



=head2 NextToken => Str

If the result of the previous C<ListWorkteams> request was truncated,
the response includes a C<NextToken>. To retrieve the next set of
labeling jobs, use the token in the next request.



=head2 SortBy => Str

The field to sort results by. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreateDate">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkteams in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

