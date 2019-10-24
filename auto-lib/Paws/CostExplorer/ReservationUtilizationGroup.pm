# Generated from default/object.tt
package Paws::CostExplorer::ReservationUtilizationGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CostExplorer::Types qw/CostExplorer_Attributes CostExplorer_ReservationAggregates/;
  has Attributes => (is => 'ro', isa => CostExplorer_Attributes);
  has Key => (is => 'ro', isa => Str);
  has Utilization => (is => 'ro', isa => CostExplorer_ReservationAggregates);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Utilization' => {
                                  'class' => 'Paws::CostExplorer::ReservationAggregates',
                                  'type' => 'CostExplorer_ReservationAggregates'
                                },
               'Value' => {
                            'type' => 'Str'
                          },
               'Attributes' => {
                                 'class' => 'Paws::CostExplorer::Attributes',
                                 'type' => 'CostExplorer_Attributes'
                               },
               'Key' => {
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

Paws::CostExplorer::ReservationUtilizationGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ReservationUtilizationGroup object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ReservationUtilizationGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

A group of reservations that share a set of attributes.

=head1 ATTRIBUTES


=head2 Attributes => CostExplorer_Attributes

  The attributes for this group of reservations.


=head2 Key => Str

  The key for a specific reservation attribute.


=head2 Utilization => CostExplorer_ReservationAggregates

  How much you used this group of reservations.


=head2 Value => Str

  The value of a specific reservation attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

