
package Paws::SMS::GetConnectors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnectors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::GetConnectorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetConnectors - Arguments for method GetConnectors on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnectors on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method GetConnectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnectors.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $GetConnectorsResponse = $sms->GetConnectors(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ConnectorList = $GetConnectorsResponse->ConnectorList;
    my $NextToken     = $GetConnectorsResponse->NextToken;

    # Returns a L<Paws::SMS::GetConnectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/GetConnectors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. The default
value is 50. To retrieve the remaining results, make another call with
the returned C<NextToken> value.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnectors in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

