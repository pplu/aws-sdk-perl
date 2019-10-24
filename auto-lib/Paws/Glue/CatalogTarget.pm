# Generated from default/object.tt
package Paws::Glue::CatalogTarget;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw//;
  has DatabaseName => (is => 'ro', isa => Str, required => 1);
  has Tables => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tables' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'Tables' => 1,
                    'DatabaseName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CatalogTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CatalogTarget object:

  $service_obj->Method(Att1 => { DatabaseName => $value, ..., Tables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CatalogTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseName

=head1 DESCRIPTION

Specifies an AWS Glue Data Catalog target.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

  The name of the database to be synchronized.


=head2 B<REQUIRED> Tables => ArrayRef[Str|Undef]

  A list of the tables to be synchronized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

