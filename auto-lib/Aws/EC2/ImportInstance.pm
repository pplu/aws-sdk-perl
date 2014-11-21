
package Aws::EC2::ImportInstance {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DiskImages => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DiskImage]', traits => ['NameInRequest'], request_name => 'diskImage' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::ImportInstanceLaunchSpecification', traits => ['NameInRequest'], request_name => 'launchSpecification' );
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ImportInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;