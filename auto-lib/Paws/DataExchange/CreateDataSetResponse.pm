
package Paws::DataExchange::CreateDataSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw/DataExchange_OriginDetails DataExchange_MapOf__string/;
  has Arn => (is => 'ro', isa => Str);
  has AssetType => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Origin => (is => 'ro', isa => Str);
  has OriginDetails => (is => 'ro', isa => DataExchange_OriginDetails);
  has SourceId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => DataExchange_MapOf__string);
  has UpdatedAt => (is => 'ro', isa => Str);

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
               'Tags' => {
                           'class' => 'Paws::DataExchange::MapOf__string',
                           'type' => 'DataExchange_MapOf__string'
                         },
               'AssetType' => {
                                'type' => 'Str'
                              },
               'Origin' => {
                             'type' => 'Str'
                           },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'OriginDetails' => {
                                    'type' => 'DataExchange_OriginDetails',
                                    'class' => 'Paws::DataExchange::OriginDetails'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'SourceId' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
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

Paws::DataExchange::CreateDataSetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN for the data set.


=head2 AssetType => Str

The type of file your data is stored in. Currently, the supported asset
type is S3_SNAPSHOT.

Valid values are: C<"S3_SNAPSHOT">
=head2 CreatedAt => Str

The date and time that the data set was created, in ISO 8601 format.


=head2 Description => Str

The description for the data set.


=head2 Id => Str

The unique identifier for the data set.


=head2 Name => Str

The name of the data set.


=head2 Origin => Str

A property that defines the data set as OWNED by the account (for
providers) or ENTITLED to the account (for subscribers).

Valid values are: C<"OWNED">, C<"ENTITLED">
=head2 OriginDetails => DataExchange_OriginDetails

If the origin of this data set is ENTITLED, includes the details for
the product on AWS Marketplace.


=head2 SourceId => Str

The data set ID of the owned data set corresponding to the entitled
data set being viewed. This parameter is returned when a data set owner
is viewing the entitled copy of its owned data set.


=head2 Tags => DataExchange_MapOf__string

The tags for the data set.


=head2 UpdatedAt => Str

The date and time that the data set was last updated, in ISO 8601
format.


=head2 _request_id => Str


=cut

