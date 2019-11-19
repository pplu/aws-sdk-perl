
package Paws::Greengrass::CreateCoreDefinitionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Version' => {
                              'type' => 'Str'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
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

Paws::Greengrass::CreateCoreDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the version was
created.


=head2 Id => Str

The ID of the version.


=head2 Version => Str

The unique ID of the version.


=head2 _request_id => Str


=cut

