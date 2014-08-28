
package Aws::EC2::ReplaceRouteTableAssociation {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRouteTableAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ReplaceRouteTableAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;