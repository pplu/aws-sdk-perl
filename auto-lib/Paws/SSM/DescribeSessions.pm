
package Paws::SSM::DescribeSessions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::SessionFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeSessionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeSessions - Arguments for method DescribeSessions on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSessions on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSessions.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeSessionsResponse = $ssm->DescribeSessions(
      State   => 'Active',
      Filters => [
        {
          Key => 'InvokedAfter'
          ,    # values: InvokedAfter, InvokedBefore, Target, Owner, Status
          Value => 'MySessionFilterValue',    # min: 1, max: 200

        },
        ...
      ],                                      # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeSessionsResponse->NextToken;
    my $Sessions  = $DescribeSessionsResponse->Sessions;

    # Returns a L<Paws::SSM::DescribeSessionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeSessions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::SessionFilter>]

One or more filters to limit the type of sessions returned by the
request.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 B<REQUIRED> State => Str

The session status to retrieve a list of sessions for. For example,
"Active".

Valid values are: C<"Active">, C<"History">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSessions in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

