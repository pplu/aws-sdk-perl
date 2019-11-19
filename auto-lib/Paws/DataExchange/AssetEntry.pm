# Generated from default/object.tt
package Paws::DataExchange::AssetEntry;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw/DataExchange_AssetDetails/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has AssetDetails => (is => 'ro', isa => DataExchange_AssetDetails, required => 1);
  has AssetType => (is => 'ro', isa => Str, required => 1);
  has CreatedAt => (is => 'ro', isa => Str, required => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1);
  has SourceId => (is => 'ro', isa => Str);
  has UpdatedAt => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataSetId' => {
                                'type' => 'Str'
                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'AssetDetails' => {
                                   'type' => 'DataExchange_AssetDetails',
                                   'class' => 'Paws::DataExchange::AssetDetails'
                                 },
               'SourceId' => {
                               'type' => 'Str'
                             },
               'Id' => {
                         'type' => 'Str'
                       },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'AssetType' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'AssetDetails' => 1,
                    'DataSetId' => 1,
                    'UpdatedAt' => 1,
                    'CreatedAt' => 1,
                    'AssetType' => 1,
                    'RevisionId' => 1,
                    'Id' => 1,
                    'Arn' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::AssetEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::AssetEntry object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::AssetEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An asset in AWS Data Exchange is a piece of data that can be stored as
an S3 object. The asset can be a structured data file, an image file,
or some other data file. When you create an import job for your files,
you create an asset in AWS Data Exchange for each of those files.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN for the asset.


=head2 B<REQUIRED> AssetDetails => DataExchange_AssetDetails

  Information about the asset, including its size.


=head2 B<REQUIRED> AssetType => Str

  The type of file your data is stored in. Currently, the supported asset
type is S3_SNAPSHOT.


=head2 B<REQUIRED> CreatedAt => Str

  The date and time that the asset was created, in ISO 8601 format.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this asset.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the asset.


=head2 B<REQUIRED> Name => Str

  The name of the asset. When importing from Amazon S3, the S3 object key
is used as the asset name. When exporting to Amazon S3, the asset name
is used as default target S3 object key.


=head2 B<REQUIRED> RevisionId => Str

  The unique identifier for the revision associated with this asset.


=head2 SourceId => Str

  The asset ID of the owned asset corresponding to the entitled asset
being viewed. This parameter is returned when an asset owner is viewing
the entitled copy of its owned asset.


=head2 B<REQUIRED> UpdatedAt => Str

  The date and time that the asset was last updated, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

