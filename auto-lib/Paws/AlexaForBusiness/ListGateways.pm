# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::ListGateways;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AlexaForBusiness::Types qw//;
  has GatewayGroupArn => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListGateways');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::ListGatewaysResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'GatewayGroupArn' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListGateways - Arguments for method ListGateways on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGateways on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method ListGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGateways.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $ListGatewaysResponse = $a4b->ListGateways(
      GatewayGroupArn => 'MyArn',          # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Gateways  = $ListGatewaysResponse->Gateways;
    my $NextToken = $ListGatewaysResponse->NextToken;

    # Returns a L<Paws::AlexaForBusiness::ListGatewaysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/ListGateways>

=head1 ATTRIBUTES


=head2 GatewayGroupArn => Str

The gateway group ARN for which to list gateways.



=head2 MaxResults => Int

The maximum number of gateway summaries to return. The default is 50.



=head2 NextToken => Str

The token used to paginate though multiple pages of gateway summaries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGateways in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

