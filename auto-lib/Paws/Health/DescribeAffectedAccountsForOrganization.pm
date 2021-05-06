
package Paws::Health::DescribeAffectedAccountsForOrganization;
  use Moose;
  has EventArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventArn' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAffectedAccountsForOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeAffectedAccountsForOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeAffectedAccountsForOrganization - Arguments for method DescribeAffectedAccountsForOrganization on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAffectedAccountsForOrganization on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DescribeAffectedAccountsForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAffectedAccountsForOrganization.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    my $DescribeAffectedAccountsForOrganizationResponse =
      $health->DescribeAffectedAccountsForOrganization(
      EventArn   => 'MyeventArn',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MynextToken',    # OPTIONAL
      );

    # Results:
    my $AffectedAccounts =
      $DescribeAffectedAccountsForOrganizationResponse->AffectedAccounts;
    my $NextToken = $DescribeAffectedAccountsForOrganizationResponse->NextToken;

# Returns a L<Paws::Health::DescribeAffectedAccountsForOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DescribeAffectedAccountsForOrganization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventArn => Str

The unique identifier for the event. Format:
C<arn:aws:health:I<event-region>::event/I<SERVICE>/I<EVENT_TYPE_CODE>/I<EVENT_TYPE_PLUS_ID>
>. Example: C<Example:
arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456>



=head2 MaxResults => Int

The maximum number of items to return in one batch, between 10 and 100,
inclusive.



=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAffectedAccountsForOrganization in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

