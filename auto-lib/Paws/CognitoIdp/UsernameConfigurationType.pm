package Paws::CognitoIdp::UsernameConfigurationType;
  use Moose;
  has CaseSensitive => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UsernameConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UsernameConfigurationType object:

  $service_obj->Method(Att1 => { CaseSensitive => $value, ..., CaseSensitive => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UsernameConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseSensitive

=head1 DESCRIPTION

The username configuration type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseSensitive => Bool

  Specifies whether username case sensitivity will be applied for all
users in the user pool through Cognito APIs.

Valid values include:

=over

=item *

B<C<True> >: Enables case sensitivity for all username input. When this
option is set to C<True>, users must sign in using the exact
capitalization of their given username. For example,
E<ldquo>UserNameE<rdquo>. This is the default value.

=item *

B<C<False> >: Enables case insensitivity for all username input. For
example, when this option is set to C<False>, users will be able to
sign in using either "username" or "Username". This option also enables
both C<preferred_username> and C<email> alias to be case insensitive,
in addition to the C<username> attribute.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

