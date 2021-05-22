
package Paws::Forecast::CreatePredictorBacktestExportJob;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::Forecast::DataDestination', required => 1);
  has PredictorArn => (is => 'ro', isa => 'Str', required => 1);
  has PredictorBacktestExportJobName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePredictorBacktestExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreatePredictorBacktestExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreatePredictorBacktestExportJob - Arguments for method CreatePredictorBacktestExportJob on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePredictorBacktestExportJob on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreatePredictorBacktestExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePredictorBacktestExportJob.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreatePredictorBacktestExportJobResponse =
      $forecast->CreatePredictorBacktestExportJob(
      Destination => {
        S3Config => {
          Path      => 'MyS3Path',
          RoleArn   => 'MyArn',          # max: 256
          KMSKeyArn => 'MyKMSKeyArn',    # max: 256; OPTIONAL
        },

      },
      PredictorArn                   => 'MyArn',
      PredictorBacktestExportJobName => 'MyName',
      Tags                           => [
        {
          Key   => 'MyTagKey',           # min: 1, max: 128
          Value => 'MyTagValue',         # max: 256

        },
        ...
      ],                                 # OPTIONAL
      );

    # Results:
    my $PredictorBacktestExportJobArn =
      $CreatePredictorBacktestExportJobResponse->PredictorBacktestExportJobArn;

 # Returns a L<Paws::Forecast::CreatePredictorBacktestExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreatePredictorBacktestExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::Forecast::DataDestination>





=head2 B<REQUIRED> PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor that you want to
export.



=head2 B<REQUIRED> PredictorBacktestExportJobName => Str

The name for the backtest export job.



=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

Optional metadata to help you categorize and organize your backtests.
Each tag consists of a key and an optional value, both of which you
define. Tag keys and values are case sensitive.

The following restrictions apply to tags:

=over

=item *

For each resource, each tag key must be unique and each tag key must
have one value.

=item *

Maximum number of tags per resource: 50.

=item *

Maximum key length: 128 Unicode characters in UTF-8.

=item *

Maximum value length: 256 Unicode characters in UTF-8.

=item *

Accepted characters: all letters and numbers, spaces representable in
UTF-8, and + - = . _ : / @. If your tagging schema is used across other
services and resources, the character restrictions of those services
also apply.

=item *

Key prefixes cannot include any upper or lowercase combination of
C<aws:> or C<AWS:>. Values can have this prefix. If a tag value has
C<aws> as its prefix but the key does not, Forecast considers it to be
a user tag and will count against the limit of 50 tags. Tags with only
the key prefix of C<aws> do not count against your tags per resource
limit. You cannot edit or delete tag keys with this prefix.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePredictorBacktestExportJob in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

