package Paws::Transfer::IdentityProviderDetails;
  use Moose;
  has InvocationRole => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::IdentityProviderDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::IdentityProviderDetails object:

  $service_obj->Method(Att1 => { InvocationRole => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::IdentityProviderDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->InvocationRole

=head1 DESCRIPTION

Returns information related to the type of user authentication that is
in use for a server's users. A server can only have one method of
authentication.

=head1 ATTRIBUTES


=head2 InvocationRole => Str

  The C<Role> parameter provides the type of C<InvocationRole> used to
authenticate the user account.


=head2 Url => Str

  The C<IdentityProviderDetail> parameter contains the location of the
service endpoint used to authenticate users.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

