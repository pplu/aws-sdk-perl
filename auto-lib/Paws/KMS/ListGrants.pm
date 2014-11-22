
package Paws::KMS::ListGrants {
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGrants');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ListGrantsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;