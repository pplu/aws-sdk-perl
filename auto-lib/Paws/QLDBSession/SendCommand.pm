
package Paws::QLDBSession::SendCommand;
  use Moose;
  has AbortTransaction => (is => 'ro', isa => 'Paws::QLDBSession::AbortTransactionRequest');
  has CommitTransaction => (is => 'ro', isa => 'Paws::QLDBSession::CommitTransactionRequest');
  has EndSession => (is => 'ro', isa => 'Paws::QLDBSession::EndSessionRequest');
  has ExecuteStatement => (is => 'ro', isa => 'Paws::QLDBSession::ExecuteStatementRequest');
  has FetchPage => (is => 'ro', isa => 'Paws::QLDBSession::FetchPageRequest');
  has SessionToken => (is => 'ro', isa => 'Str');
  has StartSession => (is => 'ro', isa => 'Paws::QLDBSession::StartSessionRequest');
  has StartTransaction => (is => 'ro', isa => 'Paws::QLDBSession::StartTransactionRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendCommand');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDBSession::SendCommandResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::SendCommand - Arguments for method SendCommand on L<Paws::QLDBSession>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendCommand on the
L<Amazon QLDB Session|Paws::QLDBSession> service. Use the attributes of this class
as arguments to method SendCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendCommand.

=head1 SYNOPSIS

    my $session.qldb = Paws->service('QLDBSession');
    my $SendCommandResult = $session . qldb->SendCommand(
      AbortTransaction => {

      },    # OPTIONAL
      CommitTransaction => {
        CommitDigest  => 'BlobCommitDigest',
        TransactionId => 'MyTransactionId',    # min: 22, max: 22

      },    # OPTIONAL
      EndSession => {

      },    # OPTIONAL
      ExecuteStatement => {
        Statement     => 'MyStatement',        # min: 1, max: 100000
        TransactionId => 'MyTransactionId',    # min: 22, max: 22
        Parameters    => [
          {
            IonBinary => 'BlobIonBinary',      # min: 1, max: 131072; OPTIONAL
            IonText   => 'MyIonText',          # min: 1, max: 1048576; OPTIONAL
          },
          ...
        ],                                     # OPTIONAL
      },    # OPTIONAL
      FetchPage => {
        NextPageToken => 'MyPageToken',        # min: 4, max: 1024
        TransactionId => 'MyTransactionId',    # min: 22, max: 22

      },    # OPTIONAL
      SessionToken => 'MySessionToken',    # OPTIONAL
      StartSession => {
        LedgerName => 'MyLedgerName',      # min: 1, max: 32

      },    # OPTIONAL
      StartTransaction => {

      },    # OPTIONAL
    );

    # Results:
    my $AbortTransaction  = $SendCommandResult->AbortTransaction;
    my $CommitTransaction = $SendCommandResult->CommitTransaction;
    my $EndSession        = $SendCommandResult->EndSession;
    my $ExecuteStatement  = $SendCommandResult->ExecuteStatement;
    my $FetchPage         = $SendCommandResult->FetchPage;
    my $StartSession      = $SendCommandResult->StartSession;
    my $StartTransaction  = $SendCommandResult->StartTransaction;

    # Returns a L<Paws::QLDBSession::SendCommandResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/session.qldb/SendCommand>

=head1 ATTRIBUTES


=head2 AbortTransaction => L<Paws::QLDBSession::AbortTransactionRequest>

Command to abort the current transaction.



=head2 CommitTransaction => L<Paws::QLDBSession::CommitTransactionRequest>

Command to commit the specified transaction.



=head2 EndSession => L<Paws::QLDBSession::EndSessionRequest>

Command to end the current session.



=head2 ExecuteStatement => L<Paws::QLDBSession::ExecuteStatementRequest>

Command to execute a statement in the specified transaction.



=head2 FetchPage => L<Paws::QLDBSession::FetchPageRequest>

Command to fetch a page.



=head2 SessionToken => Str

Specifies the session token for the current command. A session token is
constant throughout the life of the session.

To obtain a session token, run the C<StartSession> command. This
C<SessionToken> is required for every subsequent command that is issued
during the current session.



=head2 StartSession => L<Paws::QLDBSession::StartSessionRequest>

Command to start a new session. A session token is obtained as part of
the response.



=head2 StartTransaction => L<Paws::QLDBSession::StartTransactionRequest>

Command to start a new transaction.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendCommand in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

