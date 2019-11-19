# Generated from default/object.tt
package Paws::Connect::UserIdentityInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw//;
  has Email => (is => 'ro', isa => Str);
  has FirstName => (is => 'ro', isa => Str);
  has LastName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FirstName' => {
                                'type' => 'Str'
                              },
               'LastName' => {
                               'type' => 'Str'
                             },
               'Email' => {
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

Paws::Connect::UserIdentityInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::UserIdentityInfo object:

  $service_obj->Method(Att1 => { Email => $value, ..., LastName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::UserIdentityInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Email

=head1 DESCRIPTION

Contains information about the identity of a user.

=head1 ATTRIBUTES


=head2 Email => Str

  The email address. If you are using SAML for identity management and
include this parameter, an error is returned.


=head2 FirstName => Str

  The first name. This is required if you are using Amazon Connect or
SAML for identity management.


=head2 LastName => Str

  The last name. This is required if you are using Amazon Connect or SAML
for identity management.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

