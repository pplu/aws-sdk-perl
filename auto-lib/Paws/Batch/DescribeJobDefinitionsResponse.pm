
package Paws::Batch::DescribeJobDefinitionsResponse;
  use Moose;
  has JobDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobDefinition]', traits => ['NameInRequest'], request_name => 'jobDefinitions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeJobDefinitionsResponse

=head1 ATTRIBUTES


=head2 JobDefinitions => ArrayRef[L<Paws::Batch::JobDefinition>]

The list of job definitions.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeJobDefinitions>
request. When the results of a C<DescribeJobDefinitions> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

