# Generated from default/object.tt
package Paws::MediaPackage::MssEncryption;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaPackage::Types qw/MediaPackage_SpekeKeyProvider/;
  has SpekeKeyProvider => (is => 'ro', isa => MediaPackage_SpekeKeyProvider, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SpekeKeyProvider' => {
                                       'class' => 'Paws::MediaPackage::SpekeKeyProvider',
                                       'type' => 'MediaPackage_SpekeKeyProvider'
                                     }
             },
  'NameInRequest' => {
                       'SpekeKeyProvider' => 'spekeKeyProvider'
                     },
  'IsRequired' => {
                    'SpekeKeyProvider' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::MssEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::MssEncryption object:

  $service_obj->Method(Att1 => { SpekeKeyProvider => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::MssEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->SpekeKeyProvider

=head1 DESCRIPTION

A Microsoft Smooth Streaming (MSS) encryption configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpekeKeyProvider => MediaPackage_SpekeKeyProvider

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

