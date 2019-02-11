
package Paws::ApiGateway::DeleteUsagePlan;
  use Moose;
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'usageplanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUsagePlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans/{usageplanId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteUsagePlan - Arguments for method DeleteUsagePlan on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUsagePlan on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteUsagePlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUsagePlan.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteUsagePlan(
      UsagePlanId => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteUsagePlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UsagePlanId => Str

[Required] The Id of the to-be-deleted usage plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUsagePlan in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

