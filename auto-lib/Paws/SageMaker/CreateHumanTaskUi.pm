
package Paws::SageMaker::CreateHumanTaskUi;
  use Moose;
  has HumanTaskUiName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has UiTemplate => (is => 'ro', isa => 'Paws::SageMaker::UiTemplate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHumanTaskUi');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateHumanTaskUiResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHumanTaskUi - Arguments for method CreateHumanTaskUi on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHumanTaskUi on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateHumanTaskUi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHumanTaskUi.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateHumanTaskUiResponse = $api . sagemaker->CreateHumanTaskUi(
      HumanTaskUiName => 'MyHumanTaskUiName',
      UiTemplate      => {
        Content => 'MyTemplateContent',    # min: 1, max: 128000

      },
      Tags => [
        {
          Key   => 'MyTagKey',             # min: 1, max: 128
          Value => 'MyTagValue',           # max: 256

        },
        ...
      ],                                   # OPTIONAL
    );

    # Results:
    my $HumanTaskUiArn = $CreateHumanTaskUiResponse->HumanTaskUiArn;

    # Returns a L<Paws::SageMaker::CreateHumanTaskUiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateHumanTaskUi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanTaskUiName => Str

The name of the user interface you are creating.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs that contain metadata to help you
categorize and organize a human review workflow user interface. Each
tag consists of a key and a value, both of which you define.



=head2 B<REQUIRED> UiTemplate => L<Paws::SageMaker::UiTemplate>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHumanTaskUi in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

