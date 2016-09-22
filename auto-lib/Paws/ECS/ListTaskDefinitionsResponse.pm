
package Paws::ECS::ListTaskDefinitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has TaskDefinitionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['Unwrapped'], xmlname => 'taskDefinitionArns' );


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




=cut

1;