package Paws::DataExchange::ImportAssetFromSignedUrlResponseDetails;
  use Moose;
  has AssetName => (is => 'ro', isa => 'Str', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', required => 1);
  has Md5Hash => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str', required => 1);
  has SignedUrl => (is => 'ro', isa => 'Str');
  has SignedUrlExpiresAt => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ImportAssetFromSignedUrlResponseDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ImportAssetFromSignedUrlResponseDetails object:

  $service_obj->Method(Att1 => { AssetName => $value, ..., SignedUrlExpiresAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ImportAssetFromSignedUrlResponseDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetName

=head1 DESCRIPTION

The details in the response for an import request, including the signed
URL and other information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetName => Str

  The name for the asset associated with this import response.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this import job.


=head2 Md5Hash => Str

  The Base64-encoded Md5 hash for the asset, used to ensure the integrity
of the file at that location.


=head2 B<REQUIRED> RevisionId => Str

  The unique identifier for the revision associated with this import
response.


=head2 SignedUrl => Str

  The signed URL.


=head2 SignedUrlExpiresAt => Str

  The time and date at which the signed URL expires, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

