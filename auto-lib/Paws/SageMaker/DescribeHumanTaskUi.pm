
package Paws::SageMaker::DescribeHumanTaskUi;
  use Moose;
  has HumanTaskUiName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHumanTaskUi');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeHumanTaskUiResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHumanTaskUi - Arguments for method DescribeHumanTaskUi on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHumanTaskUi on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeHumanTaskUi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHumanTaskUi.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeHumanTaskUiResponse = $api . sagemaker->DescribeHumanTaskUi(
      HumanTaskUiName => 'MyHumanTaskUiName',

    );

    # Results:
    my $CreationTime      = $DescribeHumanTaskUiResponse->CreationTime;
    my $HumanTaskUiArn    = $DescribeHumanTaskUiResponse->HumanTaskUiArn;
    my $HumanTaskUiName   = $DescribeHumanTaskUiResponse->HumanTaskUiName;
    my $HumanTaskUiStatus = $DescribeHumanTaskUiResponse->HumanTaskUiStatus;
    my $UiTemplate        = $DescribeHumanTaskUiResponse->UiTemplate;

    # Returns a L<Paws::SageMaker::DescribeHumanTaskUiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeHumanTaskUi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanTaskUiName => Str

The name of the human task user interface (worker task template) you
want information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHumanTaskUi in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

