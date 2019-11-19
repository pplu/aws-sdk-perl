
package Paws::ApiGateway::CreateUsagePlan;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_QuotaSettings ApiGateway_ApiStage ApiGateway_ThrottleSettings ApiGateway_MapOfStringToString/;
  has ApiStages => (is => 'ro', isa => ArrayRef[ApiGateway_ApiStage], predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Quota => (is => 'ro', isa => ApiGateway_QuotaSettings, predicate => 1);
  has Tags => (is => 'ro', isa => ApiGateway_MapOfStringToString, predicate => 1);
  has Throttle => (is => 'ro', isa => ApiGateway_ThrottleSettings, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateUsagePlan');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/usageplans');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::UsagePlan');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'ApiStages' => 'apiStages',
                       'Quota' => 'quota',
                       'Description' => 'description',
                       'Tags' => 'tags',
                       'Throttle' => 'throttle',
                       'Name' => 'name'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'class' => 'Paws::ApiGateway::MapOfStringToString',
                           'type' => 'ApiGateway_MapOfStringToString'
                         },
               'Throttle' => {
                               'class' => 'Paws::ApiGateway::ThrottleSettings',
                               'type' => 'ApiGateway_ThrottleSettings'
                             },
               'ApiStages' => {
                                'type' => 'ArrayRef[ApiGateway_ApiStage]',
                                'class' => 'Paws::ApiGateway::ApiStage'
                              },
               'Quota' => {
                            'type' => 'ApiGateway_QuotaSettings',
                            'class' => 'Paws::ApiGateway::QuotaSettings'
                          },
               'Description' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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
      Tags     => { 'MyString' => 'MyString', },    # OPTIONAL
      Throttle => {
        BurstLimit => 1,                            # OPTIONAL
        RateLimit  => 1,                            # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ApiStages   = $UsagePlan->ApiStages;
    my $Description = $UsagePlan->Description;
    my $Id          = $UsagePlan->Id;
    my $Name        = $UsagePlan->Name;
    my $ProductCode = $UsagePlan->ProductCode;
    my $Quota       = $UsagePlan->Quota;
    my $Tags        = $UsagePlan->Tags;
    my $Throttle    = $UsagePlan->Throttle;

    # Returns a L<Paws::ApiGateway::UsagePlan> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateUsagePlan>

=head1 ATTRIBUTES


=head2 ApiStages => ArrayRef[ApiGateway_ApiStage]

The associated API stages of the usage plan.



=head2 Description => Str

The description of the usage plan.



=head2 B<REQUIRED> Name => Str

[Required] The name of the usage plan.



=head2 Quota => ApiGateway_QuotaSettings

The quota of the usage plan.



=head2 Tags => ApiGateway_MapOfStringToString

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with C<aws:>. The tag value can be up to 256 characters.



=head2 Throttle => ApiGateway_ThrottleSettings

The throttling limits of the usage plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUsagePlan in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

