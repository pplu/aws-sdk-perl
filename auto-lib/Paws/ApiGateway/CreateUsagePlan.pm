
package Paws::ApiGateway::CreateUsagePlan;
  use Moose;
  has ApiStages => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::ApiStage]', traits => ['NameInRequest'], request_name => 'apiStages');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Quota => (is => 'ro', isa => 'Paws::ApiGateway::QuotaSettings', traits => ['NameInRequest'], request_name => 'quota');
  has Throttle => (is => 'ro', isa => 'Paws::ApiGateway::ThrottleSettings', traits => ['NameInRequest'], request_name => 'throttle');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUsagePlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::UsagePlan');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateUsagePlan - Arguments for method CreateUsagePlan on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUsagePlan on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateUsagePlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUsagePlan.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $UsagePlan = $apigateway->CreateUsagePlan(
      Name      => 'MyString',
      ApiStages => [
        {
          ApiId    => 'MyString',
          Stage    => 'MyString',
          Throttle => {
            'MyString' => {
              BurstLimit => 1,    # OPTIONAL
              RateLimit  => 1,    # OPTIONAL
            },
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      Description => 'MyString',    # OPTIONAL
      Quota       => {
        Limit  => 1,                # OPTIONAL
        Offset => 1,                # OPTIONAL
        Period => 'DAY',            # values: DAY, WEEK, MONTH; OPTIONAL
      },    # OPTIONAL
      Throttle => {
        BurstLimit => 1,    # OPTIONAL
        RateLimit  => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ApiStages   = $UsagePlan->ApiStages;
    my $Description = $UsagePlan->Description;
    my $Id          = $UsagePlan->Id;
    my $Name        = $UsagePlan->Name;
    my $ProductCode = $UsagePlan->ProductCode;
    my $Quota       = $UsagePlan->Quota;
    my $Throttle    = $UsagePlan->Throttle;

    # Returns a L<Paws::ApiGateway::UsagePlan> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateUsagePlan>

=head1 ATTRIBUTES


=head2 ApiStages => ArrayRef[L<Paws::ApiGateway::ApiStage>]

The associated API stages of the usage plan.



=head2 Description => Str

The description of the usage plan.



=head2 B<REQUIRED> Name => Str

[Required] The name of the usage plan.



=head2 Quota => L<Paws::ApiGateway::QuotaSettings>

The quota of the usage plan.



=head2 Throttle => L<Paws::ApiGateway::ThrottleSettings>

The throttling limits of the usage plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUsagePlan in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

