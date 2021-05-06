
package Paws::ApiGateway::GetUsagePlans;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'keyId');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUsagePlans');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::UsagePlans');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetUsagePlans - Arguments for method GetUsagePlans on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUsagePlans on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetUsagePlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUsagePlans.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $UsagePlans = $apigateway->GetUsagePlans(
      KeyId    => 'MyString',    # OPTIONAL
      Limit    => 1,             # OPTIONAL
      Position => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Items    = $UsagePlans->Items;
    my $Position = $UsagePlans->Position;

    # Returns a L<Paws::ApiGateway::UsagePlans> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetUsagePlans>

=head1 ATTRIBUTES


=head2 KeyId => Str

The identifier of the API key associated with the usage plans.



=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 Position => Str

The current pagination position in the paged result set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUsagePlans in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

