
package Aws::SDB::DomainMetadata {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DomainMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::DomainMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DomainMetadataResult');
}
1;
