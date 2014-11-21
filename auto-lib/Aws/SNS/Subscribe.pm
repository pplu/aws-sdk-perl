
package Aws::SNS::Subscribe {
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Subscribe');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::SubscribeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeResult');
}
1;