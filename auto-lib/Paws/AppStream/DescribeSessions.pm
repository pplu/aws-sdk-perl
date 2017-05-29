
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

Paws::AppStream::DescribeSessions - Arguments for method DescribeSessions on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSessions on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method DescribeSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSessions.

As an example:

  $service_obj->DescribeSessions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

The authentication method of the user. It can be C<API> for a user
authenticated using a streaming URL, or C<SAML> for a SAML federated
user. If an authentication type is not provided, the operation defaults
to users authenticated using a streaming URL.

Valid values are: C<"API">, C<"SAML">

=head2 B<REQUIRED> FleetName => Str

The name of the fleet for which to list sessions.



=head2 Limit => Int

The size of each page of results. The default value is 20 and the
maximum supported value is 50.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 B<REQUIRED> StackName => Str

The name of the stack for which to list sessions.



=head2 UserId => Str

The user for whom to list sessions. Use null to describe all the
sessions for the stack and fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSessions in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

