# Generated from default/object.tt
package Paws::SSM::PatchFilter;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SSM::Types qw//;
  has Key => (is => 'ro', isa => Str, required => 1);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Key' => 1,
                    'Values' => 1
                  },
  'types' => {
               'Key' => {
                          'type' => 'Str'
                        },
               'Values' => {
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

Paws::SSM::PatchFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Defines which patches should be included in a patch baseline.

A patch filter consists of a key and a set of values. The filter key is
a patch property. For example, the available filter keys for WINDOWS
are PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, and
MSRC_SEVERITY. The filter values define a matching criterion for the
patch property indicated by the key. For example, if the filter key is
PRODUCT and the filter values are ["Office 2013", "Office 2016"], then
the filter accepts all patches where product name is either "Office
2013" or "Office 2016". The filter values can be exact values for the
patch property given as a key, or a wildcard (*), which matches all
values.

You can view lists of valid values for the patch properties by running
the C<DescribePatchProperties> command. For information about which
patch properties can be used with each major operating system, see
DescribePatchProperties.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key for the filter.

Run the DescribePatchProperties command to view lists of valid keys for
each operating system type.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The value for the filter key.

Run the DescribePatchProperties command to view lists of valid values
for each key based on operating system type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

