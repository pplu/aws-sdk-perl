
package Paws::AppStream::DescribeUserStackAssociations;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserStackAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeUserStackAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeUserStackAssociations - Arguments for method DescribeUserStackAssociations on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserStackAssociations on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeUserStackAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserStackAssociations.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeUserStackAssociationsResult =
      $appstream2->DescribeUserStackAssociations(
      AuthenticationType => 'API',           # OPTIONAL
      MaxResults         => 1,               # OPTIONAL
      NextToken          => 'MyString',      # OPTIONAL
      StackName          => 'MyString',      # OPTIONAL
      UserName           => 'MyUsername',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeUserStackAssociationsResult->NextToken;
    my $UserStackAssociations =
      $DescribeUserStackAssociationsResult->UserStackAssociations;

    # Returns a L<Paws::AppStream::DescribeUserStackAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeUserStackAssociations>

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

The authentication type for the user who is associated with the stack.
You must specify USERPOOL.

Valid values are: C<"API">, C<"SAML">, C<"USERPOOL">

=head2 MaxResults => Int

The maximum size of each page of results.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 StackName => Str

The name of the stack that is associated with the user.



=head2 UserName => Str

The email address of the user who is associated with the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserStackAssociations in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

