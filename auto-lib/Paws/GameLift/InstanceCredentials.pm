package Paws::GameLift::InstanceCredentials;
  use Moose;
  has Secret => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::InstanceCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::InstanceCredentials object:

  $service_obj->Method(Att1 => { Secret => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::InstanceCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->Secret

=head1 DESCRIPTION

Set of credentials required to remotely access a fleet instance. Access
credentials are requested by calling GetInstanceAccess and returned in
an InstanceAccess object.

=head1 ATTRIBUTES


=head2 Secret => Str

  Secret string. For Windows instances, the secret is a password for use
with Windows Remote Desktop. For Linux instances, it is a private key
(which must be saved as a C<.pem> file) for use with SSH.


=head2 UserName => Str

  User login string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

