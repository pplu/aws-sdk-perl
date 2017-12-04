package Paws::OpsWorks::StackSummary;
  use Moose;
  has AppsCount => (is => 'ro', isa => 'Int');
  has Arn => (is => 'ro', isa => 'Str');
  has InstancesCount => (is => 'ro', isa => 'Paws::OpsWorks::InstancesCount');
  has LayersCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::StackSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::StackSummary object:

  $service_obj->Method(Att1 => { AppsCount => $value, ..., StackId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::StackSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AppsCount

=head1 DESCRIPTION

Summarizes the number of layers, instances, and apps in a stack.

=head1 ATTRIBUTES


=head2 AppsCount => Int

  The number of apps.


=head2 Arn => Str

  The stack's ARN.


=head2 InstancesCount => L<Paws::OpsWorks::InstancesCount>

  An C<InstancesCount> object with the number of instances in each
status.


=head2 LayersCount => Int

  The number of layers.


=head2 Name => Str

  The stack name.


=head2 StackId => Str

  The stack ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

