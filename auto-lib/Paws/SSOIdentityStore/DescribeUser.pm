
package Paws::SSOIdentityStore::DescribeUser;
  use Moose;
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::DescribeUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DescribeUser - Arguments for method DescribeUser on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUser on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method DescribeUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUser.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $DescribeUserResponse = $identitystore->DescribeUser(
      IdentityStoreId => 'MyIdentityStoreId',
      UserId          => 'MyResourceId',

    );

    # Results:
    my $UserId   = $DescribeUserResponse->UserId;
    my $UserName = $DescribeUserResponse->UserName;

    # Returns a L<Paws::SSOIdentityStore::DescribeUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/DescribeUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store, such as
d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is
a randomly generated string which contains number and lower case
letters. This value is generated at the time that a new identity store
is created.



=head2 B<REQUIRED> UserId => Str

The identifier for a user in the identity store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUser in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

