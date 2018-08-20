package Paws::Pinpoint::EndpointUser;
  use Moose;
  has UserAttributes => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has UserId => (is => 'ro', isa => 'Str');
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

Endpoint user specific custom userAttributes

=head1 ATTRIBUTES


=head2 UserAttributes => L<Paws::Pinpoint::MapOfListOf__string>

  Custom attributes that describe the user by associating a name with an
array of values. For example, an attribute named "interests" might have
the following values: ["science", "politics", "travel"]. You can use
these attributes as selection criteria when you create segments. The
Amazon Pinpoint console can't display attribute names that include the
following characters: hash/pound sign (#), colon (:), question mark
(?), backslash (\), and forward slash (/). For this reason, you should
avoid using these characters in the names of custom attributes.


=head2 UserId => Str

  The unique ID of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

