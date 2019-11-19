
package Paws::ApiGateway::Account;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ApiGateway::Types qw/ApiGateway_ThrottleSettings/;
  has ApiKeyVersion => (is => 'ro', isa => Str);
  has CloudwatchRoleArn => (is => 'ro', isa => Str);
  has Features => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ThrottleSettings => (is => 'ro', isa => ApiGateway_ThrottleSettings);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ThrottleSettings' => 'throttleSettings',
                       'Features' => 'features',
                       'ApiKeyVersion' => 'apiKeyVersion',
                       'CloudwatchRoleArn' => 'cloudwatchRoleArn'
                     },
  'types' => {
               'ThrottleSettings' => {
                                       'class' => 'Paws::ApiGateway::ThrottleSettings',
                                       'type' => 'ApiGateway_ThrottleSettings'
                                     },
               'Features' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CloudwatchRoleArn' => {
                                        'type' => 'Str'
                                      },
               'ApiKeyVersion' => {
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

Paws::ApiGateway::Account

=head1 ATTRIBUTES


=head2 ApiKeyVersion => Str

The version of the API keys used for the account.


=head2 CloudwatchRoleArn => Str

The ARN of an Amazon CloudWatch role for the current Account.


=head2 Features => ArrayRef[Str|Undef]

A list of features supported for the account. When usage plans are
enabled, the features list will include an entry of C<"UsagePlans">.


=head2 ThrottleSettings => ApiGateway_ThrottleSettings

Specifies the API request limits configured for the current Account.


=head2 _request_id => Str


=cut

