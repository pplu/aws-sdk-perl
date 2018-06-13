
package Paws::IoT::GetEffectivePolicies;
  use Moose;
  has CognitoIdentityPoolId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cognitoIdentityPoolId');
  has Principal => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principal');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEffectivePolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/effective-policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetEffectivePoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetEffectivePolicies - Arguments for method GetEffectivePolicies on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEffectivePolicies on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetEffectivePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEffectivePolicies.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetEffectivePoliciesResponse = $iot->GetEffectivePolicies(
      CognitoIdentityPoolId => 'MyCognitoIdentityPoolId',    # OPTIONAL
      Principal             => 'MyPrincipal',                # OPTIONAL
      ThingName             => 'MyThingName',                # OPTIONAL
    );

    # Results:
    my $EffectivePolicies = $GetEffectivePoliciesResponse->EffectivePolicies;

    # Returns a L<Paws::IoT::GetEffectivePoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetEffectivePolicies>

=head1 ATTRIBUTES


=head2 CognitoIdentityPoolId => Str

The Cognito identity pool ID.



=head2 Principal => Str

The principal.



=head2 ThingName => Str

The thing name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEffectivePolicies in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

