
package Paws::CodeStar::ListProjects;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::ListProjectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListProjects - Arguments for method ListProjects on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjects on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method ListProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjects.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $ListProjectsResult = $codestar->ListProjects(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProjectsResult->NextToken;
    my $Projects  = $ListProjectsResult->Projects;

    # Returns a L<Paws::CodeStar::ListProjectsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/ListProjects>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum amount of data that can be contained in a single set of
results.



=head2 NextToken => Str

The continuation token to be used to return the next set of results, if
the results cannot be returned in one response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjects in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

