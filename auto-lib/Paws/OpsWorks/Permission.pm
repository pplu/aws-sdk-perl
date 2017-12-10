package Paws::OpsWorks::Permission;
  use Moose;
  has AllowSsh => (is => 'ro', isa => 'Bool');
  has AllowSudo => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Permission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Permission object:

  $service_obj->Method(Att1 => { AllowSsh => $value, ..., StackId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Permission object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowSsh

=head1 DESCRIPTION

Describes stack or user permissions.

=head1 ATTRIBUTES


=head2 AllowSsh => Bool

  Whether the user can use SSH.


=head2 AllowSudo => Bool

  Whether the user can use B<sudo>.


=head2 IamUserArn => Str

  The Amazon Resource Name (ARN) for an AWS Identity and Access
Management (IAM) role. For more information about IAM ARNs, see Using
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


=head2 Level => Str

  The user's permission level, which must be the following:

=over

=item *

C<deny>

=item *

C<show>

=item *

C<deploy>

=item *

C<manage>

=item *

C<iam_only>

=back

For more information on the permissions associated with these levels,
see Managing User Permissions
(http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html)


=head2 StackId => Str

  A stack ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

