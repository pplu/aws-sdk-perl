
package Paws::RDS::ModifyDBClusterParameterGroup {
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Parameter]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBClusterParameterGroupResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBClusterParameterGroup - Arguments for method ModifyDBClusterParameterGroup on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBClusterParameterGroup on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method ModifyDBClusterParameterGroup.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBClusterParameterGroup.

As an example:

  $service_obj->ModifyDBClusterParameterGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> DBClusterParameterGroupName => Str

  

The name of the DB cluster parameter group to modify.










=head2 B<REQUIRED> Parameters => ArrayRef[Paws::RDS::Parameter]

  

A list of parameters in the DB cluster parameter group to modify.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBClusterParameterGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

