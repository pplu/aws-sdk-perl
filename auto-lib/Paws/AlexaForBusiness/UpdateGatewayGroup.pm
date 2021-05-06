
package Paws::AlexaForBusiness::UpdateGatewayGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GatewayGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateGatewayGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateGatewayGroup - Arguments for method UpdateGatewayGroup on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGatewayGroup on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateGatewayGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGatewayGroup.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateGatewayGroupResponse = $a4b->UpdateGatewayGroup(
      GatewayGroupArn => 'MyArn',
      Description     => 'MyGatewayGroupDescription',    # OPTIONAL
      Name            => 'MyGatewayGroupName',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateGatewayGroup>

=head1 ATTRIBUTES


=head2 Description => Str

The updated description of the gateway group.



=head2 B<REQUIRED> GatewayGroupArn => Str

The ARN of the gateway group to update.



=head2 Name => Str

The updated name of the gateway group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGatewayGroup in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

