package Paws::SageMaker::UiConfig;
  use Moose;
  has UiTemplateS3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UiConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::UiConfig object:

  $service_obj->Method(Att1 => { UiTemplateS3Uri => $value, ..., UiTemplateS3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::UiConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->UiTemplateS3Uri

=head1 DESCRIPTION

Provided configuration information for the worker UI for a labeling
job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> UiTemplateS3Uri => Str

  The Amazon S3 bucket location of the UI template. For more information
about the contents of a UI template, see Creating Your Custom Labeling
Task Template
(http://docs.aws.amazon.com/sagemaker/latest/dg/sms-custom-templates-step2.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

