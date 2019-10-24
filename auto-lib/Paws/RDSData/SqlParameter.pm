# Generated from default/object.tt
package Paws::RDSData::SqlParameter;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDSData::Types qw/RDSData_Field/;
  has Name => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => RDSData_Field);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'class' => 'Paws::RDSData::Field',
                            'type' => 'RDSData_Field'
                          },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::SqlParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::SqlParameter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::SqlParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A parameter used in a SQL statement.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the parameter.


=head2 Value => RDSData_Field

  The value of the parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

