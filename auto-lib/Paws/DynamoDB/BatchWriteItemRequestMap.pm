package Paws::DynamoDB::BatchWriteItemRequestMap {
  use Moose;
  with 'Paws::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}
1;
