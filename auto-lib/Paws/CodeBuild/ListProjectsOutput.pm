
package Paws::CodeBuild::ListProjectsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Projects => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'projects' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListProjectsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more than 100 items in the list, only the first 100 items
are returned, along with a unique string called a I<next token>. To get
the next batch of items in the list, call this operation again, adding
the next token to the call.


=head2 Projects => ArrayRef[Str|Undef]

The list of build project names, with each build project name
representing a single build project.


=head2 _request_id => Str


=cut

1;