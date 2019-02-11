
package Paws::AppStream::DescribeSessions;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeSessionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeSessions - Arguments for method DescribeSessions on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSessions on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSessions.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeSessionsResult = $appstream2->DescribeSessions(
      FleetName          => 'MyString',
      StackName          => 'MyString',
      AuthenticationType => 'API',         # OPTIONAL
      Limit              => 1,             # OPTIONAL
      NextToken          => 'MyString',    # OPTIONAL
      UserId             => 'MyUserId',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeSessionsResult->NextToken;
    my $Sessions  = $DescribeSessionsResult->Sessions;

    # Returns a L<Paws::AppStream::DescribeSessionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeSessions>

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

The authentication method. Specify C<API> for a user authenticated
using a streaming URL or C<SAML> for a SAML federated user. The default
is to authenticate users using a streaming URL.

Valid values are: C<"API">, C<"SAML">, C<"USERPOOL">

=head2 B<REQUIRED> FleetName => Str

The name of the fleet. This value is case-sensitive.



=head2 Limit => Int

The size of each page of results. The default value is 20 and the
maximum value is 50.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 B<REQUIRED> StackName => Str

The name of the stack. This value is case-sensitive.



=head2 UserId => Str

The user identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSessions in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

