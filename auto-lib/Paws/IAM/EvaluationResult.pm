package Paws::IAM::EvaluationResult;
  use Moose;
  has EvalActionName => (is => 'ro', isa => 'Str', required => 1);
  has EvalDecision => (is => 'ro', isa => 'Str', required => 1);
  has EvalResourceName => (is => 'ro', isa => 'Str', required => 1);
  has MatchedStatements => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Statement]');
  has MissingContextValues => (is => 'ro', isa => 'ArrayRef[Str]');
1;
