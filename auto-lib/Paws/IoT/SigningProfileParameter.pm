# Generated from default/object.tt
package Paws::IoT::SigningProfileParameter;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificatePathOnDevice => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Platform' => {
                               'type' => 'Str'
                             },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'CertificatePathOnDevice' => {
                                              'type' => 'Str'
                                            }
             },
  'NameInRequest' => {
                       'Platform' => 'platform',
                       'CertificateArn' => 'certificateArn',
                       'CertificatePathOnDevice' => 'certificatePathOnDevice'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SigningProfileParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::SigningProfileParameter object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., Platform => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::SigningProfileParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

Describes the code-signing profile.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  Certificate ARN.


=head2 CertificatePathOnDevice => Str

  The location of the code-signing certificate on your device.


=head2 Platform => Str

  The hardware platform of your device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

