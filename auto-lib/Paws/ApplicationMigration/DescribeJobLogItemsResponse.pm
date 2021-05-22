
package Paws::ApplicationMigration::DescribeJobLogItemsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::JobLog]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeJobLogItemsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::JobLog>]

Request to describe Job log response items.


=head2 NextToken => Str

Request to describe Job log response next token.


=head2 _request_id => Str


=cut

