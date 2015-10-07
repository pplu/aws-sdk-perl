package Paws::Firehose::CopyCommand;
  use Moose;
  has CopyOptions => (is => 'ro', isa => 'Str');
  has DataTableColumns => (is => 'ro', isa => 'Str');
  has DataTableName => (is => 'ro', isa => 'Str', required => 1);
1;
