package Paws::DataExchange::ResponseDetails;
  use Moose;
  has ExportAssetsToS3 => (is => 'ro', isa => 'Paws::DataExchange::ExportAssetsToS3ResponseDetails');
  has ExportAssetToSignedUrl => (is => 'ro', isa => 'Paws::DataExchange::ExportAssetToSignedUrlResponseDetails');
  has ImportAssetFromSignedUrl => (is => 'ro', isa => 'Paws::DataExchange::ImportAssetFromSignedUrlResponseDetails');
  has ImportAssetsFromS3 => (is => 'ro', isa => 'Paws::DataExchange::ImportAssetsFromS3ResponseDetails');
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


=head2 ExportAssetsToS3 => L<Paws::DataExchange::ExportAssetsToS3ResponseDetails>

  Details for the export to Amazon S3 response.


=head2 ExportAssetToSignedUrl => L<Paws::DataExchange::ExportAssetToSignedUrlResponseDetails>

  Details for the export to signed URL response.


=head2 ImportAssetFromSignedUrl => L<Paws::DataExchange::ImportAssetFromSignedUrlResponseDetails>

  Details for the import from signed URL response.


=head2 ImportAssetsFromS3 => L<Paws::DataExchange::ImportAssetsFromS3ResponseDetails>

  Details for the import from Amazon S3 response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

