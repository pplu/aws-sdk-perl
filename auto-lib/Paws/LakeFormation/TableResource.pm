# Generated from default/object.tt
package Paws::LakeFormation::TableResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LakeFormation::Types qw//;
  has DatabaseName => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'DatabaseName' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::TableResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::TableResource object:

  $service_obj->Method(Att1 => { DatabaseName => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::TableResource object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseName

=head1 DESCRIPTION

A structure for the table object. A table is a metadata definition that
represents your data. You can Grant and Revoke table privileges to a
principal.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

  The name of the database for the table. Unique to a Data Catalog. A
database is a set of associated table definitions organized into a
logical group. You can Grant and Revoke database privileges to a
principal.


=head2 B<REQUIRED> Name => Str

  The name of the table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

