# Generated from default/object.tt
package Paws::Comprehend::Tag;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw//;
  has Key => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Key' => {
                          'type' => 'Str'
                        },
               'Value' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'Key' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A key-value pair that adds as a metadata to a resource used by Amazon
Comprehend. For example, a tag with the key-value pair
E<lsquo>DepartmentE<rsquo>:E<rsquo>SalesE<rsquo> might be added to a
resource to indicate its use by a particular department.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The initial part of a key-value pair that forms a tag associated with a
given resource. For instance, if you want to show which resources are
used by which departments, you might use E<ldquo>DepartmentE<rdquo> as
the key portion of the pair, with multiple possible values such as
E<ldquo>sales,E<rdquo> E<ldquo>legal,E<rdquo> and
E<ldquo>administration.E<rdquo>


=head2 Value => Str

  The second part of a key-value pair that forms a tag associated with a
given resource. For instance, if you want to show which resources are
used by which departments, you might use E<ldquo>DepartmentE<rdquo> as
the initial (key) portion of the pair, with a value of
E<ldquo>salesE<rdquo> to indicate the sales department.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

