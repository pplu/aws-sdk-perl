
package Paws::ApiGateway::SdkType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_SdkConfigurationProperty/;
  has ConfigurationProperties => (is => 'ro', isa => ArrayRef[ApiGateway_SdkConfigurationProperty]);
  has Description => (is => 'ro', isa => Str);
  has FriendlyName => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ConfigurationProperties' => {
                                              'class' => 'Paws::ApiGateway::SdkConfigurationProperty',
                                              'type' => 'ArrayRef[ApiGateway_SdkConfigurationProperty]'
                                            },
               'FriendlyName' => {
                                   'type' => 'Str'
                                 },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'ConfigurationProperties' => 'configurationProperties',
                       'FriendlyName' => 'friendlyName',
                       'Id' => 'id',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::SdkType

=head1 ATTRIBUTES


=head2 ConfigurationProperties => ArrayRef[ApiGateway_SdkConfigurationProperty]

A list of configuration properties of an SdkType.


=head2 Description => Str

The description of an SdkType.


=head2 FriendlyName => Str

The user-friendly name of an SdkType instance.


=head2 Id => Str

The identifier of an SdkType instance.


=head2 _request_id => Str


=cut

