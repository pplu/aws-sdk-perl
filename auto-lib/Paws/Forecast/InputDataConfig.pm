package Paws::Forecast::InputDataConfig;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has SupplementaryFeatures => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::SupplementaryFeature]');

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
and any supplementary features. You specify this object in the
CreatePredictor request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group.


=head2 SupplementaryFeatures => ArrayRef[L<Paws::Forecast::SupplementaryFeature>]

  An array of supplementary features. The only supported feature is a
holiday calendar.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

