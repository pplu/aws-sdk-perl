
package Paws::SSOIdentityStore::DescribeGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::DescribeGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DescribeGroup - Arguments for method DescribeGroup on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGroup on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method DescribeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGroup.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $DescribeGroupResponse = $identitystore->DescribeGroup(
      GroupId         => 'MyResourceId',
      IdentityStoreId => 'MyIdentityStoreId',

    );

    # Results:
    my $DisplayName = $DescribeGroupResponse->DisplayName;
    my $GroupId     = $DescribeGroupResponse->GroupId;

    # Returns a L<Paws::SSOIdentityStore::DescribeGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/DescribeGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The identifier for a group in the identity store.



=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store, such as
d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is
a randomly generated string which contains number and lower case
letters. This value is generated at the time that a new identity store
is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGroup in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

