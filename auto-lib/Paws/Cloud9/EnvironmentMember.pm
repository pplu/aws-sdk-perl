package Paws::Cloud9::EnvironmentMember;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', request_name => 'environmentId', traits => ['NameInRequest']);
  has LastAccess => (is => 'ro', isa => 'Str', request_name => 'lastAccess', traits => ['NameInRequest']);
  has Permissions => (is => 'ro', isa => 'Str', request_name => 'permissions', traits => ['NameInRequest']);
  has UserArn => (is => 'ro', isa => 'Str', request_name => 'userArn', traits => ['NameInRequest']);
  has UserId => (is => 'ro', isa => 'Str', request_name => 'userId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::EnvironmentMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Cloud9::EnvironmentMember object:

  $service_obj->Method(Att1 => { EnvironmentId => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Cloud9::EnvironmentMember object:

  $result = $service_obj->Method(...);
  $result->Att1->EnvironmentId

=head1 DESCRIPTION

Information about an environment member for an AWS Cloud9 development
environment.

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

  The ID of the environment for the environment member.


=head2 LastAccess => Str

  The time, expressed in epoch time format, when the environment member
last opened the environment.


=head2 Permissions => Str

  The type of environment member permissions associated with this
environment member. Available values include:

=over

=item *

C<owner>: Owns the environment.

=item *

C<read-only>: Has read-only access to the environment.

=item *

C<read-write>: Has read-write access to the environment.

=back



=head2 UserArn => Str

  The Amazon Resource Name (ARN) of the environment member.


=head2 UserId => Str

  The user ID in AWS Identity and Access Management (AWS IAM) of the
environment member.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

