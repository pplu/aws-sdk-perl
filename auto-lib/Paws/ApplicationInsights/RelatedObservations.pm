# Generated from default/object.tt
package Paws::ApplicationInsights::RelatedObservations;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_Observation/;
  has ObservationList => (is => 'ro', isa => ArrayRef[ApplicationInsights_Observation]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObservationList' => {
                                      'class' => 'Paws::ApplicationInsights::Observation',
                                      'type' => 'ArrayRef[ApplicationInsights_Observation]'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::RelatedObservations

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::RelatedObservations object:

  $service_obj->Method(Att1 => { ObservationList => $value, ..., ObservationList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::RelatedObservations object:

  $result = $service_obj->Method(...);
  $result->Att1->ObservationList

=head1 DESCRIPTION

Describes observations related to the problem.

=head1 ATTRIBUTES


=head2 ObservationList => ArrayRef[ApplicationInsights_Observation]

  The list of observations related to the problem.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

