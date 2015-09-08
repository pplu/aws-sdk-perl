
package Paws::OpsWorks::RegisterEcsCluster;
  use Moose;
  has EcsClusterArn => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterEcsCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::RegisterEcsClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterEcsCluster - Arguments for method RegisterEcsCluster on Paws::OpsWorks

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterEcsCluster on the 
AWS OpsWorks service. Use the attributes of this class
as arguments to method RegisterEcsCluster.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to RegisterEcsCluster.

As an example:

  $service_obj->RegisterEcsCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> EcsClusterArn => Str

  

The cluster's ARN.










=head2 B<REQUIRED> StackId => Str

  

The stack ID.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterEcsCluster in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

