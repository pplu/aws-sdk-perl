# Generated from default/object.tt
package Paws::Glue::PropertyPredicate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has Comparator => (is => 'ro', isa => Str);
  has Key => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Comparator' => {
                                 'type' => 'Str'
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

Paws::Glue::PropertyPredicate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::PropertyPredicate object:

  $service_obj->Method(Att1 => { Comparator => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::PropertyPredicate object:

  $result = $service_obj->Method(...);
  $result->Att1->Comparator

=head1 DESCRIPTION

Defines a property predicate.

=head1 ATTRIBUTES


=head2 Comparator => Str

  The comparator used to compare this property to others.


=head2 Key => Str

  The key of the property.


=head2 Value => Str

  The value of the property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

