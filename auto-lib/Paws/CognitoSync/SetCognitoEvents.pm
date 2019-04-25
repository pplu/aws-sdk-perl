
package Paws::CognitoSync::SetCognitoEvents;
  use Moose;
  has Events => (is => 'ro', isa => 'Paws::CognitoSync::Events', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityPoolId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetCognitoEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identitypools/{IdentityPoolId}/events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::SetCognitoEvents - Arguments for method SetCognitoEvents on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetCognitoEvents on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method SetCognitoEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetCognitoEvents.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    $cognito -sync->SetCognitoEvents(
      Events         => { 'MyCognitoEventType' => 'MyLambdaFunctionArn', },
      IdentityPoolId => 'MyIdentityPoolId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/SetCognitoEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => L<Paws::CognitoSync::Events>

The events to configure



=head2 B<REQUIRED> IdentityPoolId => Str

The Cognito Identity Pool to use when configuring Cognito Events




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetCognitoEvents in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

