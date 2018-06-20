
package Paws::Cloud9::CreateEnvironmentMembership;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId' , required => 1);
  has Permissions => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissions' , required => 1);
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentMembership');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::CreateEnvironmentMembershipResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::CreateEnvironmentMembership - Arguments for method CreateEnvironmentMembership on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironmentMembership on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method CreateEnvironmentMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironmentMembership.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    my $CreateEnvironmentMembershipResult =
      $cloud9->CreateEnvironmentMembership(
      EnvironmentId => 'MyEnvironmentId',
      Permissions   => 'read-write',
      UserArn       => 'MyUserArn',

      );

    # Results:
    my $Membership = $CreateEnvironmentMembershipResult->Membership;

    # Returns a L<Paws::Cloud9::CreateEnvironmentMembershipResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/CreateEnvironmentMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

The ID of the environment that contains the environment member you want
to add.



=head2 B<REQUIRED> Permissions => Str

The type of environment member permissions you want to associate with
this environment member. Available values include:

=over

=item *

C<read-only>: Has read-only access to the environment.

=item *

C<read-write>: Has read-write access to the environment.

=back


Valid values are: C<"read-write">, C<"read-only">

=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the environment member you want to
add.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironmentMembership in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

