package Aws::EC2::ConversionTask {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ConversionTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'conversionTaskId', required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'expirationTime');
  has ImportInstance => (is => 'ro', isa => 'Aws::EC2::ImportInstanceTaskDetails', traits => ['Unwrapped'], xmlname => 'importInstance');
  has ImportVolume => (is => 'ro', isa => 'Aws::EC2::ImportVolumeTaskDetails', traits => ['Unwrapped'], xmlname => 'importVolume');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}
1
