# Generated from default/object.tt
package Paws::LakeFormation::DatabaseResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LakeFormation::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
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

Paws::LakeFormation::DatabaseResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::DatabaseResource object:

  $service_obj->Method(Att1 => { Name => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::DatabaseResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A structure for the database object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the database resource. Unique to the Data Catalog.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

