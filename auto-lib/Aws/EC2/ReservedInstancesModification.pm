package Aws::EC2::ReservedInstancesModification {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has CreateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createDate');
  has EffectiveDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'effectiveDate');
  has ModificationResults => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesModificationResult]', traits => ['Unwrapped'], xmlname => 'modificationResultSet');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesId]', traits => ['Unwrapped'], xmlname => 'reservedInstancesSet');
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationId');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateDate');
}
1
