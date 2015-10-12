package Paws::EC2::BundleTask;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', xmlname => 'bundleId', traits => ['Unwrapped']);
  has BundleTaskError => (is => 'ro', isa => 'Paws::EC2::BundleTaskError', xmlname => 'error', traits => ['Unwrapped']);
  has InstanceId => (is => 'ro', isa => 'Str', xmlname => 'instanceId', traits => ['Unwrapped']);
  has Progress => (is => 'ro', isa => 'Str', xmlname => 'progress', traits => ['Unwrapped']);
  has StartTime => (is => 'ro', isa => 'Str', xmlname => 'startTime', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
  has Storage => (is => 'ro', isa => 'Paws::EC2::Storage', xmlname => 'storage', traits => ['Unwrapped']);
  has UpdateTime => (is => 'ro', isa => 'Str', xmlname => 'updateTime', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BundleTask

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::BundleTask object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::BundleTask object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 ATTRIBUTES

=head2 BundleId => Str

  

The ID of the bundle task.










=head2 BundleTaskError => Paws::EC2::BundleTaskError

  

If the task fails, a description of the error.










=head2 InstanceId => Str

  

The ID of the instance associated with this bundle task.










=head2 Progress => Str

  

The level of task completion, as a percent (for example, 20%).










=head2 StartTime => Str

  

The time this task started.










=head2 State => Str

  

The state of the task.










=head2 Storage => Paws::EC2::Storage

  

The Amazon S3 storage locations.










=head2 UpdateTime => Str

  

The time of the most recent update for the task.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
