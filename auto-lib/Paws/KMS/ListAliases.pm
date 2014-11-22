
package Paws::KMS::ListAliases {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ListAliasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;