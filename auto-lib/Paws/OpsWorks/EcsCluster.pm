package Paws::OpsWorks::EcsCluster;
  use Moose;
  has EcsClusterArn => (is => 'ro', isa => 'Str');
  has EcsClusterName => (is => 'ro', isa => 'Str');
  has RegisteredAt => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::EcsCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::EcsCluster object:

  $service_obj->Method(Att1 => { EcsClusterArn => $value, ..., StackId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::EcsCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->EcsClusterArn

=head1 DESCRIPTION

Describes a registered Amazon ECS cluster.

=head1 ATTRIBUTES


=head2 EcsClusterArn => Str

  The cluster's ARN.


=head2 EcsClusterName => Str

  The cluster name.


=head2 RegisteredAt => Str

  The time and date that the cluster was registered with the stack.


=head2 StackId => Str

  The stack ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

