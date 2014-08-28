
package Aws::Support::DescribeCommunications {
  use Moose;
  has afterTime => (is => 'ro', isa => 'Str');
  has beforeTime => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str', required => 1);
  has maxResults => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommunications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeCommunicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
