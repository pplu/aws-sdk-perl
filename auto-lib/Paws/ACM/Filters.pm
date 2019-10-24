# Generated from default/object.tt
package Paws::ACM::Filters;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::ACM::Types qw//;
  has ExtendedKeyUsage => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has KeyTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has KeyUsage => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyUsage' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'KeyTypes' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'ExtendedKeyUsage' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'NameInRequest' => {
                       'KeyUsage' => 'keyUsage',
                       'KeyTypes' => 'keyTypes',
                       'ExtendedKeyUsage' => 'extendedKeyUsage'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::Filters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::Filters object:

  $service_obj->Method(Att1 => { ExtendedKeyUsage => $value, ..., KeyUsage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::Filters object:

  $result = $service_obj->Method(...);
  $result->Att1->ExtendedKeyUsage

=head1 DESCRIPTION

This structure can be used in the ListCertificates action to filter the
output of the certificate list.

=head1 ATTRIBUTES


=head2 ExtendedKeyUsage => ArrayRef[Str|Undef]

  Specify one or more ExtendedKeyUsage extension values.


=head2 KeyTypes => ArrayRef[Str|Undef]

  Specify one or more algorithms that can be used to generate key pairs.


=head2 KeyUsage => ArrayRef[Str|Undef]

  Specify one or more KeyUsage extension values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

