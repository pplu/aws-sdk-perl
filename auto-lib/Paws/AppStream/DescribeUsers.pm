
package Paws::AppStream::DescribeUsers;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeUsersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeUsers - Arguments for method DescribeUsers on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUsers on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUsers.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeUsersResult = $appstream2->DescribeUsers(
      AuthenticationType => 'API',
      MaxResults         => 1,             # OPTIONAL
      NextToken          => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeUsersResult->NextToken;
    my $Users     = $DescribeUsersResult->Users;

    # Returns a L<Paws::AppStream::DescribeUsersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationType => Str

The authentication type for the users in the user pool to describe. You
must specify USERPOOL.

Valid values are: C<"API">, C<"SAML">, C<"USERPOOL">

=head2 MaxResults => Int

The maximum size of each page of results.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUsers in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

