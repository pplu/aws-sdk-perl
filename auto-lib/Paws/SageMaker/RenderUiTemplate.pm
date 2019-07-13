
package Paws::SageMaker::RenderUiTemplate;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Task => (is => 'ro', isa => 'Paws::SageMaker::RenderableTask', required => 1);
  has UiTemplate => (is => 'ro', isa => 'Paws::SageMaker::UiTemplate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RenderUiTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::RenderUiTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RenderUiTemplate - Arguments for method RenderUiTemplate on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RenderUiTemplate on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method RenderUiTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RenderUiTemplate.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $RenderUiTemplateResponse = $api . sagemaker->RenderUiTemplate(
      RoleArn => 'MyRoleArn',
      Task    => {
        Input => 'MyTaskInput',    # min: 2, max: 128000

      },
      UiTemplate => {
        Content => 'MyTemplateContent',    # min: 1, max: 128000

      },

    );

    # Results:
    my $Errors          = $RenderUiTemplateResponse->Errors;
    my $RenderedContent = $RenderUiTemplateResponse->RenderedContent;

    # Returns a L<Paws::SageMaker::RenderUiTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/RenderUiTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) that has access to the S3 objects that
are used by the template.



=head2 B<REQUIRED> Task => L<Paws::SageMaker::RenderableTask>

A C<RenderableTask> object containing a representative task to render.



=head2 B<REQUIRED> UiTemplate => L<Paws::SageMaker::UiTemplate>

A C<Template> object containing the worker UI template to render.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RenderUiTemplate in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

