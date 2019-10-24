# Generated from default/object.tt
package Paws::IoTThingsGraph::FlowTemplateFilter;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoTThingsGraph::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'ArrayRef[Str|Undef]'
                          },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Value' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::FlowTemplateFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::FlowTemplateFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::FlowTemplateFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An object that filters a workflow search.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the search filter field.


=head2 B<REQUIRED> Value => ArrayRef[Str|Undef]

  An array of string values for the search filter field. Multiple values
function as AND criteria in the search.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

