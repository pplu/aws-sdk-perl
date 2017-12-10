package Paws::ElasticTranscoder::Notifications;
  use Moose;
  has Completed => (is => 'ro', isa => 'Str');
  has Error => (is => 'ro', isa => 'Str');
  has Progressing => (is => 'ro', isa => 'Str');
  has Warning => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Notifications

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Notifications object:

  $service_obj->Method(Att1 => { Completed => $value, ..., Warning => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Notifications object:

  $result = $service_obj->Method(...);
  $result->Att1->Completed

=head1 DESCRIPTION

The Amazon Simple Notification Service (Amazon SNS) topic or topics to
notify in order to report job status.

To receive notifications, you must also subscribe to the new topic in
the Amazon SNS console.

=head1 ATTRIBUTES


=head2 Completed => Str

  The Amazon SNS topic that you want to notify when Elastic Transcoder
has finished processing the job.


=head2 Error => Str

  The Amazon SNS topic that you want to notify when Elastic Transcoder
encounters an error condition.


=head2 Progressing => Str

  The Amazon Simple Notification Service (Amazon SNS) topic that you want
to notify when Elastic Transcoder has started to process the job.


=head2 Warning => Str

  The Amazon SNS topic that you want to notify when Elastic Transcoder
encounters a warning condition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

