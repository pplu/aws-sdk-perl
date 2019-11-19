# Generated from default/object.tt
package Paws::Forecast::Metrics;
  use Moo;
  use Types::Standard qw/Num ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_WeightedQuantileLoss/;
  has RMSE => (is => 'ro', isa => Num);
  has WeightedQuantileLosses => (is => 'ro', isa => ArrayRef[Forecast_WeightedQuantileLoss]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RMSE' => {
                           'type' => 'Num'
                         },
               'WeightedQuantileLosses' => {
                                             'type' => 'ArrayRef[Forecast_WeightedQuantileLoss]',
                                             'class' => 'Paws::Forecast::WeightedQuantileLoss'
                                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::Metrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::Metrics object:

  $service_obj->Method(Att1 => { RMSE => $value, ..., WeightedQuantileLosses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::Metrics object:

  $result = $service_obj->Method(...);
  $result->Att1->RMSE

=head1 DESCRIPTION

Provides metrics used to evaluate the performance of a predictor. This
object is part of the WindowSummary object.

=head1 ATTRIBUTES


=head2 RMSE => Num

  The root mean square error (RMSE).


=head2 WeightedQuantileLosses => ArrayRef[Forecast_WeightedQuantileLoss]

  An array of weighted quantile losses. Quantiles divide a probability
distribution into regions of equal probability. The distribution in
this case is the loss function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

