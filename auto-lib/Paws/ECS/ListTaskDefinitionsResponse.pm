
package Paws::ECS::ListTaskDefinitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TaskDefinitionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'taskDefinitionArns' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTaskDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListTaskDefinitions>
request. When the results of a C<ListTaskDefinitions> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 TaskDefinitionArns => ArrayRef[Str|Undef]

The list of task definition Amazon Resource Name (ARN) entries for the
C<ListTaskDefinitions> request.


=head2 _request_id => Str


=cut

1;