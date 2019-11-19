# Generated from default/object.tt
package Paws::MediaPackage::ChannelList;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::MediaPackage::Types qw/MediaPackage_Channel/;
  has Channels => (is => 'ro', isa => ArrayRef[MediaPackage_Channel]);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Channels' => {
                               'type' => 'ArrayRef[MediaPackage_Channel]',
                               'class' => 'Paws::MediaPackage::Channel'
                             }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Channels' => 'channels'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ChannelList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::ChannelList object:

  $service_obj->Method(Att1 => { Channels => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::ChannelList object:

  $result = $service_obj->Method(...);
  $result->Att1->Channels

=head1 DESCRIPTION

A collection of Channel records.

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[MediaPackage_Channel]

  A list of Channel records.


=head2 NextToken => Str

  A token that can be used to resume pagination from the end of the
collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

