
package Paws::Cloud9::UpdateEnvironmentMembership;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId' , required => 1);
  has Permissions => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissions' , required => 1);
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentMembership');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::UpdateEnvironmentMembershipResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::UpdateEnvironmentMembership - Arguments for method UpdateEnvironmentMembership on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironmentMembership on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method UpdateEnvironmentMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironmentMembership.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    my $UpdateEnvironmentMembershipResult =
      $cloud9->UpdateEnvironmentMembership(
      EnvironmentId => 'MyEnvironmentId',
      Permissions   => 'read-write',
      UserArn       => 'MyUserArn',

      );

    # Results:
    my $Membership = $UpdateEnvironmentMembershipResult->Membership;

    # Returns a L<Paws::Cloud9::UpdateEnvironmentMembershipResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/UpdateEnvironmentMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

The ID of the environment for the environment member whose settings you
want to change.



=head2 B<REQUIRED> Permissions => Str

The replacement type of environment member permissions you want to
associate with this environment member. Available values include:

=over

=item *

C<read-only>: Has read-only access to the environment.

=item *

C<read-write>: Has read-write access to the environment.

=back


Valid values are: C<"read-write">, C<"read-only">

=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the environment member whose settings
you want to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironmentMembership in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

