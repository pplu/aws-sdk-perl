# Generated from default/object.tt
package Paws::CostExplorer::DimensionValuesWithAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CostExplorer::Types qw/CostExplorer_Attributes/;
  has Attributes => (is => 'ro', isa => CostExplorer_Attributes);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Attributes' => {
                                 'class' => 'Paws::CostExplorer::Attributes',
                                 'type' => 'CostExplorer_Attributes'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DimensionValuesWithAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::DimensionValuesWithAttributes object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::DimensionValuesWithAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The metadata of a specific type that you can use to filter and group
your results. You can use C<GetDimensionValues> to find specific
values.

=head1 ATTRIBUTES


=head2 Attributes => CostExplorer_Attributes

  The attribute that applies to a specific C<Dimension>.


=head2 Value => Str

  The value of a dimension with a specific attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

