
package Paws::GuardDuty::ListDetectors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDetectors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::ListDetectorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListDetectors - Arguments for method ListDetectors on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDetectors on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListDetectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDetectors.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListDetectorsResponse = $guardduty->ListDetectors(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $DetectorIds = $ListDetectorsResponse->DetectorIds;
    my $NextToken   = $ListDetectorsResponse->NextToken;

    # Returns a L<Paws::GuardDuty::ListDetectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListDetectors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of detectors
that you want in the response.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the ListDetectors action.
For subsequent calls to the action fill nextToken in the request with
the value of nextToken from the previous response to continue listing
data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDetectors in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

