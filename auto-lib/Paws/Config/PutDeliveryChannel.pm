
package Paws::Config::PutDeliveryChannel {
  use Moose;
  has DeliveryChannel => (is => 'ro', isa => 'Paws::Config::DeliveryChannel', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDeliveryChannel');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;