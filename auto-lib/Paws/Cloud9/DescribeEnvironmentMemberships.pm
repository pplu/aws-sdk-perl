
package Paws::Cloud9::DescribeEnvironmentMemberships;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'permissions' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentMemberships');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::DescribeEnvironmentMembershipsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironmentMemberships - Arguments for method DescribeEnvironmentMemberships on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironmentMemberships on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method DescribeEnvironmentMemberships.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironmentMemberships.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    my $DescribeEnvironmentMembershipsResult =
      $cloud9->DescribeEnvironmentMemberships(
      EnvironmentId => 'MyEnvironmentId',    # OPTIONAL
      MaxResults    => 1,                    # OPTIONAL
      NextToken     => 'MyString',           # OPTIONAL
      Permissions   => [
        'owner', ...    # values: owner, read-write, read-only
      ],                # OPTIONAL
      UserArn => 'MyUserArn',    # OPTIONAL
      );

    # Results:
    my $Memberships = $DescribeEnvironmentMembershipsResult->Memberships;
    my $NextToken   = $DescribeEnvironmentMembershipsResult->NextToken;

    # Returns a L<Paws::Cloud9::DescribeEnvironmentMembershipsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/DescribeEnvironmentMemberships>

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The ID of the environment to get environment member information about.



=head2 MaxResults => Int

The maximum number of environment members to get information about.



=head2 NextToken => Str

During a previous call, if there are more than 25 items in the list,
only the first 25 items are returned, along with a unique string called
a I<next token>. To get the next batch of items in the list, call this
operation again, adding the next token to the call. To get all of the
items in the list, keep calling this operation with each subsequent
next token that is returned, until no more next tokens are returned.



=head2 Permissions => ArrayRef[Str|Undef]

The type of environment member permissions to get information about.
Available values include:

=over

=item *

C<owner>: Owns the environment.

=item *

C<read-only>: Has read-only access to the environment.

=item *

C<read-write>: Has read-write access to the environment.

=back

If no value is specified, information about all environment members are
returned.



=head2 UserArn => Str

The Amazon Resource Name (ARN) of an individual environment member to
get information about. If no value is specified, information about all
environment members are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironmentMemberships in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

