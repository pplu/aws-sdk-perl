
package Paws::ApplicationMigration::DescribeReplicationConfigurationTemplatesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::ReplicationConfigurationTemplate]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeReplicationConfigurationTemplatesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::ReplicationConfigurationTemplate>]

Request to describe Replication Configuration template by items.


=head2 NextToken => Str

Request to describe Replication Configuration template by next token.


=head2 _request_id => Str


=cut

