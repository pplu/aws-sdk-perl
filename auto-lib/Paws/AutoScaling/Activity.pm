package Paws::AutoScaling::Activity;
  use Moose;
  has ActivityId => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cause => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Int');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::Activity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::Activity object:

  $service_obj->Method(Att1 => { ActivityId => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::Activity object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityId

=head1 DESCRIPTION

Describes scaling activity, which is a long-running process that
represents a change to your Auto Scaling group, such as changing its
size or replacing an instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityId => Str

  The ID of the activity.


=head2 B<REQUIRED> AutoScalingGroupName => Str

  The name of the Auto Scaling group.


=head2 Cause => Str

  The reason the activity began.


=head2 Description => Str

  A friendly, more verbose description of the activity.


=head2 Details => Str

  The details about the activity.


=head2 EndTime => Str

  The end time of the activity.


=head2 Progress => Int

  A value between 0 and 100 that indicates the progress of the activity.


=head2 B<REQUIRED> StartTime => Str

  The start time of the activity.


=head2 B<REQUIRED> StatusCode => Str

  The current status of the activity.


=head2 StatusMessage => Str

  A friendly, more verbose description of the activity status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

