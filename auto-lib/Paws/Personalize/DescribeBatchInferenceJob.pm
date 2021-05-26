
package Paws::Personalize::DescribeBatchInferenceJob;
  use Moose;
  has BatchInferenceJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'batchInferenceJobArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBatchInferenceJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::DescribeBatchInferenceJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeBatchInferenceJob - Arguments for method DescribeBatchInferenceJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBatchInferenceJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeBatchInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBatchInferenceJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeBatchInferenceJobResponse =
      $personalize->DescribeBatchInferenceJob(
      BatchInferenceJobArn => 'MyArn',

      );

    # Results:
    my $BatchInferenceJob =
      $DescribeBatchInferenceJobResponse->BatchInferenceJob;

    # Returns a L<Paws::Personalize::DescribeBatchInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeBatchInferenceJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchInferenceJobArn => Str

The ARN of the batch inference job to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBatchInferenceJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

