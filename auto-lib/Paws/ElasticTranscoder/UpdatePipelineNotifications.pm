
package Paws::ElasticTranscoder::UpdatePipelineNotifications;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has Notifications => (is => 'ro', isa => 'Paws::ElasticTranscoder::Notifications', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipelineNotifications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/pipelines/{Id}/notifications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::UpdatePipelineNotificationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineNotifications - Arguments for method UpdatePipelineNotifications on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipelineNotifications on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method UpdatePipelineNotifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipelineNotifications.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $UpdatePipelineNotificationsResponse =
      $elastictranscoder->UpdatePipelineNotifications(
      Id            => 'MyId',
      Notifications => {
        Completed   => 'MySnsTopic',    # OPTIONAL
        Error       => 'MySnsTopic',    # OPTIONAL
        Progressing => 'MySnsTopic',    # OPTIONAL
        Warning     => 'MySnsTopic',    # OPTIONAL
      },

      );

    # Results:
    my $Pipeline = $UpdatePipelineNotificationsResponse->Pipeline;

# Returns a L<Paws::ElasticTranscoder::UpdatePipelineNotificationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder/UpdatePipelineNotifications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the pipeline for which you want to change
notification settings.



=head2 B<REQUIRED> Notifications => L<Paws::ElasticTranscoder::Notifications>

The topic ARN for the Amazon Simple Notification Service (Amazon SNS)
topic that you want to notify to report job status.

To receive notifications, you must also subscribe to the new topic in
the Amazon SNS console.

=over

=item *

B<Progressing>: The topic ARN for the Amazon Simple Notification
Service (Amazon SNS) topic that you want to notify when Elastic
Transcoder has started to process jobs that are added to this pipeline.
This is the ARN that Amazon SNS returned when you created the topic.

=item *

B<Complete>: The topic ARN for the Amazon SNS topic that you want to
notify when Elastic Transcoder has finished processing a job. This is
the ARN that Amazon SNS returned when you created the topic.

=item *

B<Warning>: The topic ARN for the Amazon SNS topic that you want to
notify when Elastic Transcoder encounters a warning condition. This is
the ARN that Amazon SNS returned when you created the topic.

=item *

B<Error>: The topic ARN for the Amazon SNS topic that you want to
notify when Elastic Transcoder encounters an error condition. This is
the ARN that Amazon SNS returned when you created the topic.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipelineNotifications in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

