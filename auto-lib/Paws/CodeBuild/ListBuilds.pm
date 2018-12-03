
package Paws::CodeBuild::ListBuilds;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuilds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListBuildsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListBuilds - Arguments for method ListBuilds on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBuilds on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ListBuilds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBuilds.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ListBuildsOutput = $codebuild->ListBuilds(
      NextToken => 'MyString',     # OPTIONAL
      SortOrder => 'ASCENDING',    # OPTIONAL
    );

    # Results:
    my $Ids       = $ListBuildsOutput->Ids;
    my $NextToken = $ListBuildsOutput->NextToken;

    # Returns a L<Paws::CodeBuild::ListBuildsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ListBuilds>

=head1 ATTRIBUTES


=head2 NextToken => Str

During a previous call, if there are more than 100 items in the list,
only the first 100 items are returned, along with a unique string
called a I<next token>. To get the next batch of items in the list,
call this operation again, adding the next token to the call. To get
all of the items in the list, keep calling this operation with each
subsequent next token that is returned, until no more next tokens are
returned.



=head2 SortOrder => Str

The order to list build IDs. Valid values include:

=over

=item *

C<ASCENDING>: List the build IDs in ascending order by build ID.

=item *

C<DESCENDING>: List the build IDs in descending order by build ID.

=back


Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBuilds in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

