
package Paws::Config::GetResourceConfigHistory {
  use Moose;
  has chronologicalOrder => (is => 'ro', isa => 'Str');
  has earlierTime => (is => 'ro', isa => 'Str');
  has laterTime => (is => 'ro', isa => 'Str');
  has limit => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');
  has resourceId => (is => 'ro', isa => 'Str', required => 1);
  has resourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceConfigHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetResourceConfigHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;