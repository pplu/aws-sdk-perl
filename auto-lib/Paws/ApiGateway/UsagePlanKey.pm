
package Paws::ApiGateway::UsagePlanKey;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Type' => {
                           'type' => 'Str'
                         },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Type' => 'type',
                       'Id' => 'id',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlanKey

=head1 ATTRIBUTES


=head2 Id => Str

The Id of a usage plan key.


=head2 Name => Str

The name of a usage plan key.


=head2 Type => Str

The type of a usage plan key. Currently, the valid key type is
C<API_KEY>.


=head2 Value => Str

The value of a usage plan key.


=head2 _request_id => Str


=cut

