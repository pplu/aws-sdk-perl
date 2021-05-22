
package Paws::MediaConnect::UpdateFlow;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::UpdateFailoverConfig', traits => ['NameInRequest'], request_name => 'sourceFailoverConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlow - Arguments for method UpdateFlow on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlow on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlow.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowResponse = $mediaconnect->UpdateFlow(
      FlowArn              => 'My__string',
      SourceFailoverConfig => {
        RecoveryWindow => 1,            # OPTIONAL
        State          => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Flow = $UpdateFlowResponse->Flow;

    # Returns a L<Paws::MediaConnect::UpdateFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The flow that you want to update.



=head2 SourceFailoverConfig => L<Paws::MediaConnect::UpdateFailoverConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

