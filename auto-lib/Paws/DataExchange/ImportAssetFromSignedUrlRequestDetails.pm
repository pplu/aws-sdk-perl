# Generated from default/object.tt
package Paws::DataExchange::ImportAssetFromSignedUrlRequestDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw//;
  has AssetName => (is => 'ro', isa => Str, required => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1);
  has Md5Hash => (is => 'ro', isa => Str, required => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AssetName' => 1,
                    'Md5Hash' => 1,
                    'RevisionId' => 1,
                    'DataSetId' => 1
                  },
  'types' => {
               'AssetName' => {
                                'type' => 'Str'
                              },
               'Md5Hash' => {
                              'type' => 'Str'
                            },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'DataSetId' => {
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

Paws::DataExchange::ImportAssetFromSignedUrlRequestDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ImportAssetFromSignedUrlRequestDetails object:

  $service_obj->Method(Att1 => { AssetName => $value, ..., RevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ImportAssetFromSignedUrlRequestDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetName

=head1 DESCRIPTION

Details of the operation to be performed by the job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetName => Str

  The name of the asset. When importing from Amazon S3, the S3 object key
is used as the asset name.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this import job.


=head2 B<REQUIRED> Md5Hash => Str

  The Base64-encoded Md5 hash for the asset, used to ensure the integrity
of the file at that location.


=head2 B<REQUIRED> RevisionId => Str

  The unique identifier for the revision associated with this import
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

