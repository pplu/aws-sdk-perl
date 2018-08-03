package Paws::SageMaker::SecondaryStatusTransition;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SecondaryStatusTransition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SecondaryStatusTransition object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SecondaryStatusTransition object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Specifies a secondary status the job has transitioned into. It includes
a start timestamp and later an end timestamp. The end timestamp is
added either after the job transitions to a different secondary status
or after the job has ended.

=head1 ATTRIBUTES


=head2 EndTime => Str

  A timestamp that shows when the secondary status has ended and the job
has transitioned into another secondary status. The C<EndTime>
timestamp is also set after the training job has ended.


=head2 B<REQUIRED> StartTime => Str

  A timestamp that shows when the training job has entered this secondary
status.


=head2 B<REQUIRED> Status => Str

  Provides granular information about the system state. For more
information, see C<SecondaryStatus> under the DescribeTrainingJob
response elements.


=head2 StatusMessage => Str

  Shows a brief description and other information about the secondary
status. For example, the C<LaunchingMLInstances> secondary status could
show a status message of "Insufficent capacity error while launching
instances".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

