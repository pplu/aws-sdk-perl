
package Paws::ApplicationMigration::DescribeSourceServersResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::SourceServer]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeSourceServersResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::SourceServer>]

Request to filter Source Servers list by item.


=head2 NextToken => Str

Request to filter Source Servers next token.


=head2 _request_id => Str


=cut

