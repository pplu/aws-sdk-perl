
package Paws::Pinpoint::ApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => Pinpoint_MapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'type' => 'Pinpoint_MapOf__string',
                           'class' => 'Paws::Pinpoint::MapOf__string'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'Arn' => 1,
                    'Id' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the application.


=head2 B<REQUIRED> Id => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.


=head2 B<REQUIRED> Name => Str

The display name of the application. This name is displayed as the
B<Project name> on the Amazon Pinpoint console.


=head2 Tags => Pinpoint_MapOf__string

A string-to-string map of key-value pairs that identifies the tags that
are associated with the application. Each tag consists of a required
tag key and an associated tag value.


=head2 _request_id => Str


=cut

