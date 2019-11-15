
package Paws::QLDBSession::SendCommandResult;
  use Moose;
  has AbortTransaction => (is => 'ro', isa => 'Paws::QLDBSession::AbortTransactionResult');
  has CommitTransaction => (is => 'ro', isa => 'Paws::QLDBSession::CommitTransactionResult');
  has EndSession => (is => 'ro', isa => 'Paws::QLDBSession::EndSessionResult');
  has ExecuteStatement => (is => 'ro', isa => 'Paws::QLDBSession::ExecuteStatementResult');
  has FetchPage => (is => 'ro', isa => 'Paws::QLDBSession::FetchPageResult');
  has StartSession => (is => 'ro', isa => 'Paws::QLDBSession::StartSessionResult');
  has StartTransaction => (is => 'ro', isa => 'Paws::QLDBSession::StartTransactionResult');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::SendCommandResult

=head1 ATTRIBUTES


=head2 AbortTransaction => L<Paws::QLDBSession::AbortTransactionResult>

Contains the details of the aborted transaction.


=head2 CommitTransaction => L<Paws::QLDBSession::CommitTransactionResult>

Contains the details of the committed transaction.


=head2 EndSession => L<Paws::QLDBSession::EndSessionResult>

Contains the details of the ended session.


=head2 ExecuteStatement => L<Paws::QLDBSession::ExecuteStatementResult>

Contains the details of the executed statement.


=head2 FetchPage => L<Paws::QLDBSession::FetchPageResult>

Contains the details of the fetched page.


=head2 StartSession => L<Paws::QLDBSession::StartSessionResult>

Contains the details of the started session that includes a session
token. This C<SessionToken> is required for every subsequent command
that is issued during the current session.


=head2 StartTransaction => L<Paws::QLDBSession::StartTransactionResult>

Contains the details of the started transaction.


=head2 _request_id => Str


=cut

1;