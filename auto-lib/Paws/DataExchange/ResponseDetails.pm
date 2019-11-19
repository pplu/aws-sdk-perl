# Generated from default/object.tt
package Paws::DataExchange::ResponseDetails;
  use Moo;
  use Types::Standard qw//;
  use Paws::DataExchange::Types qw/DataExchange_ExportAssetToSignedUrlResponseDetails DataExchange_ExportAssetsToS3ResponseDetails DataExchange_ImportAssetFromSignedUrlResponseDetails DataExchange_ImportAssetsFromS3ResponseDetails/;
  has ExportAssetsToS3 => (is => 'ro', isa => DataExchange_ExportAssetsToS3ResponseDetails);
  has ExportAssetToSignedUrl => (is => 'ro', isa => DataExchange_ExportAssetToSignedUrlResponseDetails);
  has ImportAssetFromSignedUrl => (is => 'ro', isa => DataExchange_ImportAssetFromSignedUrlResponseDetails);
  has ImportAssetsFromS3 => (is => 'ro', isa => DataExchange_ImportAssetsFromS3ResponseDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImportAssetsFromS3' => {
                                         'type' => 'DataExchange_ImportAssetsFromS3ResponseDetails',
                                         'class' => 'Paws::DataExchange::ImportAssetsFromS3ResponseDetails'
                                       },
               'ImportAssetFromSignedUrl' => {
                                               'class' => 'Paws::DataExchange::ImportAssetFromSignedUrlResponseDetails',
                                               'type' => 'DataExchange_ImportAssetFromSignedUrlResponseDetails'
                                             },
               'ExportAssetToSignedUrl' => {
                                             'type' => 'DataExchange_ExportAssetToSignedUrlResponseDetails',
                                             'class' => 'Paws::DataExchange::ExportAssetToSignedUrlResponseDetails'
                                           },
               'ExportAssetsToS3' => {
                                       'class' => 'Paws::DataExchange::ExportAssetsToS3ResponseDetails',
                                       'type' => 'DataExchange_ExportAssetsToS3ResponseDetails'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ResponseDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ResponseDetails object:

  $service_obj->Method(Att1 => { ExportAssetsToS3 => $value, ..., ImportAssetsFromS3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ResponseDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ExportAssetsToS3

=head1 DESCRIPTION

Details for the response.

=head1 ATTRIBUTES


=head2 ExportAssetsToS3 => DataExchange_ExportAssetsToS3ResponseDetails

  Details for the export to Amazon S3 response.


=head2 ExportAssetToSignedUrl => DataExchange_ExportAssetToSignedUrlResponseDetails

  Details for the export to signed URL response.


=head2 ImportAssetFromSignedUrl => DataExchange_ImportAssetFromSignedUrlResponseDetails

  Details for the import from signed URL response.


=head2 ImportAssetsFromS3 => DataExchange_ImportAssetsFromS3ResponseDetails

  Details for the import from Amazon S3 response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

