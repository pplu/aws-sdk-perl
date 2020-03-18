
package Paws::ApiGateway::UpdateUsage;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'keyId', required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'usageplanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUsage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans/{usageplanId}/keys/{keyId}/usage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Usage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateUsage - Arguments for method UpdateUsage on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUsage on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUsage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Usage = $apigateway->UpdateUsage(
      KeyId           => 'MyString',
      UsagePlanId     => 'MyString',
      PatchOperations => [
        {
          From => 'MyString',
          Op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $EndDate     = $Usage->EndDate;
    my $Items       = $Usage->Items;
    my $Position    = $Usage->Position;
    my $StartDate   = $Usage->StartDate;
    my $UsagePlanId = $Usage->UsagePlanId;

    # Returns a L<Paws::ApiGateway::Usage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

[Required] The identifier of the API key associated with the usage plan
in which a temporary extension is granted to the remaining quota.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> UsagePlanId => Str

[Required] The Id of the usage plan associated with the usage data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUsage in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

