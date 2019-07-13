
package Paws::SMS::ListApps;
  use Moose;
  has AppIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'appIds' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::ListAppsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ListApps - Arguments for method ListApps on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApps on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method ListApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApps.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $ListAppsResponse = $sms->ListApps(
      AppIds     => [ 'MyAppId', ... ],    # OPTIONAL
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyNextToken',         # OPTIONAL
    );

    # Results:
    my $Apps      = $ListAppsResponse->Apps;
    my $NextToken = $ListAppsResponse->NextToken;

    # Returns a L<Paws::SMS::ListAppsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/ListApps>

=head1 ATTRIBUTES


=head2 AppIds => ArrayRef[Str|Undef]





=head2 MaxResults => Int

The maximum number of results to return in a single call. The default
value is 50. To retrieve the remaining results, make another call with
the returned C<NextToken> value.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApps in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

