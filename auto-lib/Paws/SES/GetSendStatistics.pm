
package Paws::SES::GetSendStatistics {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendStatistics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::GetSendStatisticsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendStatisticsResult');
}
1;