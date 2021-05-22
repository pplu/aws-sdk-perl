
package Paws::Chime::ListAppInstanceUsers;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'app-instance-arn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppInstanceUsers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListAppInstanceUsersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAppInstanceUsers - Arguments for method ListAppInstanceUsers on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppInstanceUsers on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListAppInstanceUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppInstanceUsers.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListAppInstanceUsersResponse = $chime->ListAppInstanceUsers(
      AppInstanceArn => 'MyChimeArn',
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AppInstanceArn   = $ListAppInstanceUsersResponse->AppInstanceArn;
    my $AppInstanceUsers = $ListAppInstanceUsersResponse->AppInstanceUsers;
    my $NextToken        = $ListAppInstanceUsersResponse->NextToken;

    # Returns a L<Paws::Chime::ListAppInstanceUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListAppInstanceUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.



=head2 MaxResults => Int

The maximum number of requests that you want returned.



=head2 NextToken => Str

The token passed by previous API calls until all requested users are
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppInstanceUsers in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

