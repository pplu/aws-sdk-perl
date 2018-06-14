
package Paws::ApiGateway::UpdateUsagePlan;
  use Moose;
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'usageplanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUsagePlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans/{usageplanId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::UsagePlan');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateUsagePlan - Arguments for method UpdateUsagePlan on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUsagePlan on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateUsagePlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUsagePlan.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $UsagePlan = $apigateway->UpdateUsagePlan(
      UsagePlanId     => 'MyString',
      PatchOperations => [
        {
          from  => 'MyString',
          value => 'MyString',
          path  => 'MyString',
          op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $quota       = $UsagePlan->quota;
    my $productCode = $UsagePlan->productCode;
    my $throttle    = $UsagePlan->throttle;
    my $name        = $UsagePlan->name;
    my $id          = $UsagePlan->id;
    my $apiStages   = $UsagePlan->apiStages;
    my $description = $UsagePlan->description;

    # Returns a L<Paws::ApiGateway::UsagePlan> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>

=head1 ATTRIBUTES


=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> UsagePlanId => Str

[Required] The Id of the to-be-updated usage plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUsagePlan in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

