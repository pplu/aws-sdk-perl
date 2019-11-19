# Generated from default/object.tt
package Paws::LakeFormation::ColumnWildcard;
  use Moo;
  use Types::Standard qw/Undef ArrayRef Str/;
  use Paws::LakeFormation::Types qw//;
  has ExcludedColumnNames => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExcludedColumnNames' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ColumnWildcard

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::ColumnWildcard object:

  $service_obj->Method(Att1 => { ExcludedColumnNames => $value, ..., ExcludedColumnNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::ColumnWildcard object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludedColumnNames

=head1 DESCRIPTION

A wildcard object, consisting of an optional list of excluded column
names or indexes.

=head1 ATTRIBUTES


=head2 ExcludedColumnNames => ArrayRef[Str|Undef]

  Excludes column names. Any column with this name will be excluded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

