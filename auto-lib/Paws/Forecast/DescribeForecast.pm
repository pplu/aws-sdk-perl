
package Paws::Forecast::DescribeForecast;
  use Moose;
  has ForecastArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeForecastResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeForecast - Arguments for method DescribeForecast on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeForecast on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeForecast.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeForecastResponse = $forecast->DescribeForecast(
      ForecastArn => 'MyArn',

    );

    # Results:
    my $CreationTime         = $DescribeForecastResponse->CreationTime;
    my $DatasetGroupArn      = $DescribeForecastResponse->DatasetGroupArn;
    my $ForecastArn          = $DescribeForecastResponse->ForecastArn;
    my $ForecastName         = $DescribeForecastResponse->ForecastName;
    my $ForecastTypes        = $DescribeForecastResponse->ForecastTypes;
    my $LastModificationTime = $DescribeForecastResponse->LastModificationTime;
    my $Message              = $DescribeForecastResponse->Message;
    my $PredictorArn         = $DescribeForecastResponse->PredictorArn;
    my $Status               = $DescribeForecastResponse->Status;

    # Returns a L<Paws::Forecast::DescribeForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeForecast>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ForecastArn => Str

The Amazon Resource Name (ARN) of the forecast.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeForecast in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

