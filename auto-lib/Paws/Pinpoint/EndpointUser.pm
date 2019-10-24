# Generated from default/object.tt
package Paws::Pinpoint::EndpointUser;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfListOf__string/;
  has UserAttributes => (is => 'ro', isa => Pinpoint_MapOfListOf__string);
  has UserId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserAttributes' => {
                                     'class' => 'Paws::Pinpoint::MapOfListOf__string',
                                     'type' => 'Pinpoint_MapOfListOf__string'
                                   },
               'UserId' => {
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

Paws::Pinpoint::EndpointUser

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointUser object:

  $service_obj->Method(Att1 => { UserAttributes => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointUser object:

  $result = $service_obj->Method(...);
  $result->Att1->UserAttributes

=head1 DESCRIPTION

Specifies data for one or more attributes that describe the user who's
associated with an endpoint.

=head1 ATTRIBUTES


=head2 UserAttributes => Pinpoint_MapOfListOf__string

  One or more custom attributes that describe the user by associating a
name with an array of values. For example, the value of an attribute
named Interests might be: ["science", "music", "travel"]. You can use
these attributes as filter criteria when you create segments.

When you define the name of a custom attribute, avoid using the
following characters: number sign (#), colon (:), question mark (?),
backslash (\), and slash (/). The Amazon Pinpoint console can't display
attribute names that contain these characters. This limitation doesn't
apply to attribute values.


=head2 UserId => Str

  The unique identifier for the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

