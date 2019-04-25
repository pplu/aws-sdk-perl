
package Paws::Comprehend::StopSentimentDetectionJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopSentimentDetectionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StopSentimentDetectionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StopSentimentDetectionJob - Arguments for method StopSentimentDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopSentimentDetectionJob on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StopSentimentDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopSentimentDetectionJob.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StopSentimentDetectionJobResponse =
      $comprehend->StopSentimentDetectionJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $JobId     = $StopSentimentDetectionJobResponse->JobId;
    my $JobStatus = $StopSentimentDetectionJobResponse->JobStatus;

    # Returns a L<Paws::Comprehend::StopSentimentDetectionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StopSentimentDetectionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the sentiment detection job to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopSentimentDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

