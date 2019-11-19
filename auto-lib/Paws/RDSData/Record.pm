# Generated from default/object.tt
package Paws::RDSData::Record;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::RDSData::Types qw/RDSData_Value/;
  has Values => (is => 'ro', isa => ArrayRef[RDSData_Value]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Values' => 'values'
                     },
  'types' => {
               'Values' => {
                             'class' => 'Paws::RDSData::Value',
                             'type' => 'ArrayRef[RDSData_Value]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::Record

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::Record object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::Record object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

A record returned by a call.

=head1 ATTRIBUTES


=head2 Values => ArrayRef[RDSData_Value]

  The values returned in the record.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

