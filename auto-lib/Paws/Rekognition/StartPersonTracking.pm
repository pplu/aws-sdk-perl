
package Paws::Rekognition::StartPersonTracking;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has JobTag => (is => 'ro', isa => 'Str');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::NotificationChannel');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartPersonTracking');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartPersonTrackingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartPersonTracking - Arguments for method StartPersonTracking on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartPersonTracking on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method StartPersonTracking.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartPersonTracking.

As an example:

  $service_obj->StartPersonTracking(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the start request. If you use the
same token with multiple C<StartPersonTracking> requests, the same
C<JobId> is returned. Use C<ClientRequestToken> to prevent the same job
from being accidently started more than once.



=head2 JobTag => Str

Unique identifier you specify to identify the job in the completion
status published to the Amazon Simple Notification Service topic.



=head2 NotificationChannel => L<Paws::Rekognition::NotificationChannel>

The Amazon SNS topic ARN you want Rekognition Video to publish the
completion status of the people detection operation to.



=head2 B<REQUIRED> Video => L<Paws::Rekognition::Video>

The video in which you want to detect people. The video must be stored
in an Amazon S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartPersonTracking in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

