
package Paws::CodeStar::ListTeamMembers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTeamMembers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::ListTeamMembersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListTeamMembers - Arguments for method ListTeamMembers on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTeamMembers on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method ListTeamMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTeamMembers.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $ListTeamMembersResult = $codestar->ListTeamMembers(
      ProjectId  => 'MyProjectId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListTeamMembersResult->NextToken;
    my $TeamMembers = $ListTeamMembersResult->TeamMembers;

    # Returns a L<Paws::CodeStar::ListTeamMembersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/ListTeamMembers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of team members you want returned in a response.



=head2 NextToken => Str

The continuation token for the next set of results, if the results
cannot be returned in one response.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project for which you want to list team members.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTeamMembers in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

