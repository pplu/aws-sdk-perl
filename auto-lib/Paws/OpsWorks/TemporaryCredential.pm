package Paws::OpsWorks::TemporaryCredential;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
  has ValidForInMinutes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::TemporaryCredential

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::TemporaryCredential object:

  $service_obj->Method(Att1 => { InstanceId => $value, ..., ValidForInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::TemporaryCredential object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceId

=head1 DESCRIPTION

Contains the data needed by RDP clients such as the Microsoft Remote
Desktop Connection to log in to the instance.

=head1 ATTRIBUTES


=head2 InstanceId => Str

  The instance's AWS OpsWorks Stacks ID.


=head2 Password => Str

  The password.


=head2 Username => Str

  The user name.


=head2 ValidForInMinutes => Int

  The length of time (in minutes) that the grant is valid. When the grant
expires, at the end of this period, the user will no longer be able to
use the credentials to log in. If they are logged in at the time, they
will be automatically logged out.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

