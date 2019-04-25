package Paws::SageMaker::HumanTaskConfig;
  use Moose;
  has AnnotationConsolidationConfig => (is => 'ro', isa => 'Paws::SageMaker::AnnotationConsolidationConfig', required => 1);
  has MaxConcurrentTaskCount => (is => 'ro', isa => 'Int');
  has NumberOfHumanWorkersPerDataObject => (is => 'ro', isa => 'Int', required => 1);
  has PreHumanTaskLambdaArn => (is => 'ro', isa => 'Str', required => 1);
  has PublicWorkforceTaskPrice => (is => 'ro', isa => 'Paws::SageMaker::PublicWorkforceTaskPrice');
  has TaskAvailabilityLifetimeInSeconds => (is => 'ro', isa => 'Int');
  has TaskDescription => (is => 'ro', isa => 'Str', required => 1);
  has TaskKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TaskTimeLimitInSeconds => (is => 'ro', isa => 'Int', required => 1);
  has TaskTitle => (is => 'ro', isa => 'Str', required => 1);
  has UiConfig => (is => 'ro', isa => 'Paws::SageMaker::UiConfig', required => 1);
  has WorkteamArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HumanTaskConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HumanTaskConfig object:

  $service_obj->Method(Att1 => { AnnotationConsolidationConfig => $value, ..., WorkteamArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HumanTaskConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AnnotationConsolidationConfig

=head1 DESCRIPTION

Information required for human workers to complete a labeling task.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnnotationConsolidationConfig => L<Paws::SageMaker::AnnotationConsolidationConfig>

  Configures how labels are consolidated across human workers.


=head2 MaxConcurrentTaskCount => Int

  Defines the maximum number of data objects that can be labeled by human
workers at the same time. Each object may have more than one worker at
one time.


=head2 B<REQUIRED> NumberOfHumanWorkersPerDataObject => Int

  The number of human workers that will label an object.


=head2 B<REQUIRED> PreHumanTaskLambdaArn => Str

  The Amazon Resource Name (ARN) of a Lambda function that is run before
a data object is sent to a human worker. Use this function to provide
input to a custom labeling job.

For the built-in bounding box, image classification, semantic
segmentation, and text classification task types, Amazon SageMaker
Ground Truth provides the following Lambda functions:

B<US East (Northern Virginia) (us-east-1):>

=over

=item *

C<arn:aws:lambda:us-east-1:432418664414:function:PRE-BoundingBox>

=item *

C<arn:aws:lambda:us-east-1:432418664414:function:PRE-ImageMultiClass>

=item *

C<arn:aws:lambda:us-east-1:432418664414:function:PRE-SemanticSegmentation>

=item *

C<arn:aws:lambda:us-east-1:432418664414:function:PRE-TextMultiClass>

=back

B<US East (Ohio) (us-east-2):>

=over

=item *

C<arn:aws:lambda:us-east-2:266458841044:function:PRE-BoundingBox>

=item *

C<arn:aws:lambda:us-east-2:266458841044:function:PRE-ImageMultiClass>

=item *

C<arn:aws:lambda:us-east-2:266458841044:function:PRE-SemanticSegmentation>

=item *

C<arn:aws:lambda:us-east-2:266458841044:function:PRE-TextMultiClass>

=back

B<US West (Oregon) (us-west-2):>

=over

=item *

C<arn:aws:lambda:us-west-2:081040173940:function:PRE-BoundingBox>

=item *

C<arn:aws:lambda:us-west-2:081040173940:function:PRE-ImageMultiClass>

=item *

C<arn:aws:lambda:us-west-2:081040173940:function:PRE-SemanticSegmentation>

=item *

C<arn:aws:lambda:us-west-2:081040173940:function:PRE-TextMultiClass>

=back

B<EU (Ireland) (eu-west-1):>

=over

=item *

C<arn:aws:lambda:eu-west-1:568282634449:function:PRE-BoundingBox>

=item *

C<arn:aws:lambda:eu-west-1:568282634449:function:PRE-ImageMultiClass>

=item *

C<arn:aws:lambda:eu-west-1:568282634449:function:PRE-SemanticSegmentation>

=item *

C<arn:aws:lambda:eu-west-1:568282634449:function:PRE-TextMultiClass>

=back

B<Asia Pacific (Tokyo (ap-northeast-1):>

=over

=item *

C<arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-BoundingBox>

=item *

C<arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-ImageMultiClass>

=item *

C<arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-SemanticSegmentation>

=item *

C<arn:aws:lambda:ap-northeast-1:477331159723:function:PRE-TextMultiClass>

=back



=head2 PublicWorkforceTaskPrice => L<Paws::SageMaker::PublicWorkforceTaskPrice>

  The price that you pay for each task performed by a public worker.


=head2 TaskAvailabilityLifetimeInSeconds => Int

  The length of time that a task remains available for labelling by human
workers.


=head2 B<REQUIRED> TaskDescription => Str

  A description of the task for your human workers.


=head2 TaskKeywords => ArrayRef[Str|Undef]

  Keywords used to describe the task so that workers on Amazon Mechanical
Turk can discover the task.


=head2 B<REQUIRED> TaskTimeLimitInSeconds => Int

  The amount of time that a worker has to complete a task.


=head2 B<REQUIRED> TaskTitle => Str

  A title for the task for your human workers.


=head2 B<REQUIRED> UiConfig => L<Paws::SageMaker::UiConfig>

  Information about the user interface that workers use to complete the
labeling task.


=head2 B<REQUIRED> WorkteamArn => Str

  The Amazon Resource Name (ARN) of the work team assigned to complete
the tasks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

