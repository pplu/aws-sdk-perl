
package Paws::ApiGateway::GetUsage;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endDate', required => 1);
  has KeyId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'keyId');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has StartDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startDate', required => 1);
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'usageplanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUsage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans/{usageplanId}/usage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Usage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetUsage - Arguments for method GetUsage on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUsage on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUsage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Usage = $apigateway->GetUsage(
      EndDate     => 'MyString',
      StartDate   => 'MyString',
      UsagePlanId => 'MyString',
      KeyId       => 'MyString',    # OPTIONAL
      Limit       => 1,             # OPTIONAL
      Position    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EndDate     = $Usage->EndDate;
    my $Items       = $Usage->Items;
    my $Position    = $Usage->Position;
    my $StartDate   = $Usage->StartDate;
    my $UsagePlanId = $Usage->UsagePlanId;

    # Returns a L<Paws::ApiGateway::Usage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndDate => Str

[Required] The ending date (e.g., 2016-12-31) of the usage data.



=head2 KeyId => Str

The Id of the API key associated with the resultant usage data.



=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 Position => Str

The current pagination position in the paged result set.



=head2 B<REQUIRED> StartDate => Str

[Required] The starting date (e.g., 2016-01-01) of the usage data.



=head2 B<REQUIRED> UsagePlanId => Str

[Required] The Id of the usage plan associated with the usage data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUsage in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

