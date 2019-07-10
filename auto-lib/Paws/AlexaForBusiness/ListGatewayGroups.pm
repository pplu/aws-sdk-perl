
package Paws::AlexaForBusiness::ListGatewayGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGatewayGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::ListGatewayGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListGatewayGroups - Arguments for method ListGatewayGroups on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGatewayGroups on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method ListGatewayGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGatewayGroups.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $ListGatewayGroupsResponse = $a4b->ListGatewayGroups(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $GatewayGroups = $ListGatewayGroupsResponse->GatewayGroups;
    my $NextToken     = $ListGatewayGroupsResponse->NextToken;

    # Returns a L<Paws::AlexaForBusiness::ListGatewayGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/ListGatewayGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of gateway group summaries to return. The default is
50.



=head2 NextToken => Str

The token used to paginate though multiple pages of gateway group
summaries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGatewayGroups in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

