# Generated from json/callresult_class.tt

package Paws::QLDBSession::SendCommandResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDBSession::Types qw/QLDBSession_EndSessionResult QLDBSession_AbortTransactionResult QLDBSession_CommitTransactionResult QLDBSession_ExecuteStatementResult QLDBSession_FetchPageResult QLDBSession_StartTransactionResult QLDBSession_StartSessionResult/;
  has AbortTransaction => (is => 'ro', isa => QLDBSession_AbortTransactionResult);
  has CommitTransaction => (is => 'ro', isa => QLDBSession_CommitTransactionResult);
  has EndSession => (is => 'ro', isa => QLDBSession_EndSessionResult);
  has ExecuteStatement => (is => 'ro', isa => QLDBSession_ExecuteStatementResult);
  has FetchPage => (is => 'ro', isa => QLDBSession_FetchPageResult);
  has StartSession => (is => 'ro', isa => QLDBSession_StartSessionResult);
  has StartTransaction => (is => 'ro', isa => QLDBSession_StartTransactionResult);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExecuteStatement' => {
                                       'class' => 'Paws::QLDBSession::ExecuteStatementResult',
                                       'type' => 'QLDBSession_ExecuteStatementResult'
                                     },
               'FetchPage' => {
                                'type' => 'QLDBSession_FetchPageResult',
                                'class' => 'Paws::QLDBSession::FetchPageResult'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StartTransaction' => {
                                       'type' => 'QLDBSession_StartTransactionResult',
                                       'class' => 'Paws::QLDBSession::StartTransactionResult'
                                     },
               'StartSession' => {
                                   'class' => 'Paws::QLDBSession::StartSessionResult',
                                   'type' => 'QLDBSession_StartSessionResult'
                                 },
               'AbortTransaction' => {
                                       'class' => 'Paws::QLDBSession::AbortTransactionResult',
                                       'type' => 'QLDBSession_AbortTransactionResult'
                                     },
               'CommitTransaction' => {
                                        'class' => 'Paws::QLDBSession::CommitTransactionResult',
                                        'type' => 'QLDBSession_CommitTransactionResult'
                                      },
               'EndSession' => {
                                 'class' => 'Paws::QLDBSession::EndSessionResult',
                                 'type' => 'QLDBSession_EndSessionResult'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::SendCommandResult

=head1 ATTRIBUTES


=head2 AbortTransaction => QLDBSession_AbortTransactionResult

Contains the details of the aborted transaction.


=head2 CommitTransaction => QLDBSession_CommitTransactionResult

Contains the details of the committed transaction.


=head2 EndSession => QLDBSession_EndSessionResult

Contains the details of the ended session.


=head2 ExecuteStatement => QLDBSession_ExecuteStatementResult

Contains the details of the executed statement.


=head2 FetchPage => QLDBSession_FetchPageResult

Contains the details of the fetched page.


=head2 StartSession => QLDBSession_StartSessionResult

Contains the details of the started session that includes a session
token. This C<SessionToken> is required for every subsequent command
that is issued during the current session.


=head2 StartTransaction => QLDBSession_StartTransactionResult

Contains the details of the started transaction.


=head2 _request_id => Str


=cut

1;