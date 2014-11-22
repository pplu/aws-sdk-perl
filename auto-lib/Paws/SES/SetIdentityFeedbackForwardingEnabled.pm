
package Paws::SES::SetIdentityFeedbackForwardingEnabled {
  use Moose;
  has ForwardingEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SetIdentityFeedbackForwardingEnabledResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabledResult');
}
1;