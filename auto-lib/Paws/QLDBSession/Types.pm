package Paws::QLDBSession::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type QLDBSession_AbortTransactionRequest, { class => 'Paws::QLDBSession::AbortTransactionRequest' };
  class_type QLDBSession_AbortTransactionResult, { class => 'Paws::QLDBSession::AbortTransactionResult' };
  class_type QLDBSession_BadRequestException, { class => 'Paws::QLDBSession::BadRequestException' };
  class_type QLDBSession_CommitTransactionRequest, { class => 'Paws::QLDBSession::CommitTransactionRequest' };
  class_type QLDBSession_CommitTransactionResult, { class => 'Paws::QLDBSession::CommitTransactionResult' };
  class_type QLDBSession_EndSessionRequest, { class => 'Paws::QLDBSession::EndSessionRequest' };
  class_type QLDBSession_EndSessionResult, { class => 'Paws::QLDBSession::EndSessionResult' };
  class_type QLDBSession_ExecuteStatementRequest, { class => 'Paws::QLDBSession::ExecuteStatementRequest' };
  class_type QLDBSession_ExecuteStatementResult, { class => 'Paws::QLDBSession::ExecuteStatementResult' };
  class_type QLDBSession_FetchPageRequest, { class => 'Paws::QLDBSession::FetchPageRequest' };
  class_type QLDBSession_FetchPageResult, { class => 'Paws::QLDBSession::FetchPageResult' };
  class_type QLDBSession_InvalidSessionException, { class => 'Paws::QLDBSession::InvalidSessionException' };
  class_type QLDBSession_LimitExceededException, { class => 'Paws::QLDBSession::LimitExceededException' };
  class_type QLDBSession_OccConflictException, { class => 'Paws::QLDBSession::OccConflictException' };
  class_type QLDBSession_Page, { class => 'Paws::QLDBSession::Page' };
  class_type QLDBSession_RateExceededException, { class => 'Paws::QLDBSession::RateExceededException' };
  class_type QLDBSession_SendCommandRequest, { class => 'Paws::QLDBSession::SendCommandRequest' };
  class_type QLDBSession_SendCommandResult, { class => 'Paws::QLDBSession::SendCommandResult' };
  class_type QLDBSession_StartSessionRequest, { class => 'Paws::QLDBSession::StartSessionRequest' };
  class_type QLDBSession_StartSessionResult, { class => 'Paws::QLDBSession::StartSessionResult' };
  class_type QLDBSession_StartTransactionRequest, { class => 'Paws::QLDBSession::StartTransactionRequest' };
  class_type QLDBSession_StartTransactionResult, { class => 'Paws::QLDBSession::StartTransactionResult' };
  class_type QLDBSession_ValueHolder, { class => 'Paws::QLDBSession::ValueHolder' };

1;
