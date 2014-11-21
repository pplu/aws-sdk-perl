
package Aws::ElasticBeanstalk::ListAvailableSolutionStacks {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacksResult');
}
1;