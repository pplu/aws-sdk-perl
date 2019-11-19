# Generated from default/object.tt
package Paws::Pinpoint::TagsModel;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string/;
  has Tags => (is => 'ro', isa => Pinpoint_MapOf__string, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Pinpoint::MapOf__string',
                           'type' => 'Pinpoint_MapOf__string'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::TagsModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::TagsModel object:

  $service_obj->Method(Att1 => { Tags => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::TagsModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Tags

=head1 DESCRIPTION

Specifies the tags (keys and values) for an application, campaign, or
segment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => Pinpoint_MapOf__string

  A string-to-string map of key-value pairs that defines the tags for an
application, campaign, or segment. A project, campaign, or segment can
have a maximum of 50 tags.

Each tag consists of a required tag key and an associated tag value.
The maximum length of a tag key is 128 characters. The maximum length
of a tag value is 256 characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

