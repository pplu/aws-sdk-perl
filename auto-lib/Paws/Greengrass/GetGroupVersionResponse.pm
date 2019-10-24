
package Paws::Greengrass::GetGroupVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_GroupVersion/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Definition => (is => 'ro', isa => Greengrass_GroupVersion);
  has Id => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Version' => {
                              'type' => 'Str'
                            },
               'Definition' => {
                                 'class' => 'Paws::Greengrass::GroupVersion',
                                 'type' => 'Greengrass_GroupVersion'
                               },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
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

Paws::Greengrass::GetGroupVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the group version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the group version was
created.


=head2 Definition => Greengrass_GroupVersion

Information about the group version definition.


=head2 Id => Str

The ID of the group version.


=head2 Version => Str

The unique ID for the version of the group.


=head2 _request_id => Str


=cut

