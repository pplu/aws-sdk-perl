# Generated from json/callargs_class.tt

package Paws::Forecast::DeletePredictor;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has PredictorArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeletePredictor');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'PredictorArn' => 1
                  },
  'types' => {
               'PredictorArn' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DeletePredictor - Arguments for method DeletePredictor on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePredictor on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DeletePredictor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePredictor.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    $forecast->DeletePredictor(
      PredictorArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DeletePredictor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePredictor in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

