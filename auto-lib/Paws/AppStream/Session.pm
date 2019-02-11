package Paws::AppStream::Session;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has NetworkAccessConfiguration => (is => 'ro', isa => 'Paws::AppStream::NetworkAccessConfiguration');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Session

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Session object:

  $service_obj->Method(Att1 => { AuthenticationType => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Session object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationType

=head1 DESCRIPTION

Describes a streaming session.

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

  The authentication method. The user is authenticated using a streaming
URL (C<API>) or SAML federation (C<SAML>).


=head2 B<REQUIRED> FleetName => Str

  The name of the fleet for the streaming session.


=head2 B<REQUIRED> Id => Str

  The identifier of the streaming session.


=head2 NetworkAccessConfiguration => L<Paws::AppStream::NetworkAccessConfiguration>

  The network details for the streaming session.


=head2 B<REQUIRED> StackName => Str

  The name of the stack for the streaming session.


=head2 B<REQUIRED> State => Str

  The current state of the streaming session.


=head2 B<REQUIRED> UserId => Str

  The identifier of the user for whom the session was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

