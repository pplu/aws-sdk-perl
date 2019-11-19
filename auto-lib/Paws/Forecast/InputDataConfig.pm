# Generated from default/object.tt
package Paws::Forecast::InputDataConfig;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_SupplementaryFeature/;
  has DatasetGroupArn => (is => 'ro', isa => Str, required => 1);
  has SupplementaryFeatures => (is => 'ro', isa => ArrayRef[Forecast_SupplementaryFeature]);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DatasetGroupArn' => 1
                  },
  'types' => {
               'SupplementaryFeatures' => {
                                            'type' => 'ArrayRef[Forecast_SupplementaryFeature]',
                                            'class' => 'Paws::Forecast::SupplementaryFeature'
                                          },
               'DatasetGroupArn' => {
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

Paws::Forecast::InputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::InputDataConfig object:

  $service_obj->Method(Att1 => { DatasetGroupArn => $value, ..., SupplementaryFeatures => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::InputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DatasetGroupArn

=head1 DESCRIPTION

The data used to train a predictor. The data includes a dataset group
and any supplementary features. This object is specified in the
CreatePredictor request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group.


=head2 SupplementaryFeatures => ArrayRef[Forecast_SupplementaryFeature]

  An array of supplementary features. For this release, the only
supported feature is a holiday calendar.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

