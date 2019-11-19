# Generated from default/object.tt
package Paws::MediaPackage::TagsModel;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaPackage::Types qw/MediaPackage___mapOf__string/;
  has Tags => (is => 'ro', isa => MediaPackage___mapOf__string, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'MediaPackage___mapOf__string',
                           'class' => 'Paws::MediaPackage::__mapOf__string'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::TagsModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::TagsModel object:

  $service_obj->Method(Att1 => { Tags => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::TagsModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Tags

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => MediaPackage___mapOf__string

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

