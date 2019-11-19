# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::CreateGatewayGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has ClientRequestToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateGatewayGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::CreateGatewayGroupResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'ClientRequestToken' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateGatewayGroup - Arguments for method CreateGatewayGroup on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGatewayGroup on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateGatewayGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGatewayGroup.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $CreateGatewayGroupResponse = $a4b->CreateGatewayGroup(
      ClientRequestToken => 'MyClientRequestToken',
      Name               => 'MyGatewayGroupName',
      Description        => 'MyGatewayGroupDescription',    # OPTIONAL
    );

    # Results:
    my $GatewayGroupArn = $CreateGatewayGroupResponse->GatewayGroupArn;

    # Returns a L<Paws::AlexaForBusiness::CreateGatewayGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/CreateGatewayGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, user-specified identifier for the request that ensures
idempotency.



=head2 Description => Str

The description of the gateway group.



=head2 B<REQUIRED> Name => Str

The name of the gateway group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGatewayGroup in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

