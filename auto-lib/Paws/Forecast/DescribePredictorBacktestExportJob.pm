
package Paws::Forecast::DescribePredictorBacktestExportJob;
  use Moose;
  has PredictorBacktestExportJobArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePredictorBacktestExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribePredictorBacktestExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribePredictorBacktestExportJob - Arguments for method DescribePredictorBacktestExportJob on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePredictorBacktestExportJob on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribePredictorBacktestExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePredictorBacktestExportJob.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribePredictorBacktestExportJobResponse =
      $forecast->DescribePredictorBacktestExportJob(
      PredictorBacktestExportJobArn => 'MyArn',

      );

    # Results:
    my $CreationTime =
      $DescribePredictorBacktestExportJobResponse->CreationTime;
    my $Destination = $DescribePredictorBacktestExportJobResponse->Destination;
    my $LastModificationTime =
      $DescribePredictorBacktestExportJobResponse->LastModificationTime;
    my $Message = $DescribePredictorBacktestExportJobResponse->Message;
    my $PredictorArn =
      $DescribePredictorBacktestExportJobResponse->PredictorArn;
    my $PredictorBacktestExportJobArn =
      $DescribePredictorBacktestExportJobResponse
      ->PredictorBacktestExportJobArn;
    my $PredictorBacktestExportJobName =
      $DescribePredictorBacktestExportJobResponse
      ->PredictorBacktestExportJobName;
    my $Status = $DescribePredictorBacktestExportJobResponse->Status;

# Returns a L<Paws::Forecast::DescribePredictorBacktestExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribePredictorBacktestExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredictorBacktestExportJobArn => Str

The Amazon Resource Name (ARN) of the predictor backtest export job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePredictorBacktestExportJob in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

