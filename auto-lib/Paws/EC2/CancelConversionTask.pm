
package Paws::EC2::CancelConversionTask {
  use Moose;
  has ConversionTaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conversionTaskId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has ReasonMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reasonMessage' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelConversionTask');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;