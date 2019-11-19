# Generated from default/object.tt
package Paws::Forecast::Schema;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_SchemaAttribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[Forecast_SchemaAttribute]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::Forecast::SchemaAttribute',
                                 'type' => 'ArrayRef[Forecast_SchemaAttribute]'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::Schema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::Schema object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Attributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::Schema object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Defines the fields of a dataset. This object is specified in the
CreateDataset request.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[Forecast_SchemaAttribute]

  An array of attributes specifying the name and type of each field in a
dataset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

