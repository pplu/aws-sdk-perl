# Generated from default/object.tt
package Paws::MediaPackage::ChannelCreateParameters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_Tags/;
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => MediaPackage_Tags);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Tags' => {
                           'class' => 'Paws::MediaPackage::Tags',
                           'type' => 'MediaPackage_Tags'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Tags' => 'tags',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ChannelCreateParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::ChannelCreateParameters object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::ChannelCreateParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Configuration parameters for a new Channel.

=head1 ATTRIBUTES


=head2 Description => Str

  A short text description of the Channel.


=head2 B<REQUIRED> Id => Str

  The ID of the Channel. The ID must be unique within the region and it
cannot be changed after a Channel is created.


=head2 Tags => MediaPackage_Tags

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

