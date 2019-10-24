
package Paws::ApiGateway::UsagePlan;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString ApiGateway_QuotaSettings ApiGateway_ThrottleSettings ApiGateway_ApiStage/;
  has ApiStages => (is => 'ro', isa => ArrayRef[ApiGateway_ApiStage]);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ProductCode => (is => 'ro', isa => Str);
  has Quota => (is => 'ro', isa => ApiGateway_QuotaSettings);
  has Tags => (is => 'ro', isa => ApiGateway_MapOfStringToString);
  has Throttle => (is => 'ro', isa => ApiGateway_ThrottleSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Throttle' => {
                               'class' => 'Paws::ApiGateway::ThrottleSettings',
                               'type' => 'ApiGateway_ThrottleSettings'
                             },
               'Id' => {
                         'type' => 'Str'
                       },
               'ApiStages' => {
                                'class' => 'Paws::ApiGateway::ApiStage',
                                'type' => 'ArrayRef[ApiGateway_ApiStage]'
                              },
               'ProductCode' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Quota' => {
                            'class' => 'Paws::ApiGateway::QuotaSettings',
                            'type' => 'ApiGateway_QuotaSettings'
                          },
               'Tags' => {
                           'class' => 'Paws::ApiGateway::MapOfStringToString',
                           'type' => 'ApiGateway_MapOfStringToString'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Throttle' => 'throttle',
                       'Id' => 'id',
                       'ApiStages' => 'apiStages',
                       'ProductCode' => 'productCode',
                       'Quota' => 'quota',
                       'Tags' => 'tags',
                       'Description' => 'description',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlan

=head1 ATTRIBUTES


=head2 ApiStages => ArrayRef[ApiGateway_ApiStage]

The associated API stages of a usage plan.


=head2 Description => Str

The description of a usage plan.


=head2 Id => Str

The identifier of a UsagePlan resource.


=head2 Name => Str

The name of a usage plan.


=head2 ProductCode => Str

The AWS Markeplace product identifier to associate with the usage plan
as a SaaS product on AWS Marketplace.


=head2 Quota => ApiGateway_QuotaSettings

The maximum number of permitted requests per a given unit time
interval.


=head2 Tags => ApiGateway_MapOfStringToString

The collection of tags. Each tag element is associated with a given
resource.


=head2 Throttle => ApiGateway_ThrottleSettings

The request throttle limits of a usage plan.


=head2 _request_id => Str


=cut

