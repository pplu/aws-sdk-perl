# Generated from default/object.tt
package Paws::DataExchange::ImportAssetsFromS3ResponseDetails;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::DataExchange::Types qw/DataExchange_AssetSourceEntry/;
  has AssetSources => (is => 'ro', isa => ArrayRef[DataExchange_AssetSourceEntry], required => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'AssetSources' => {
                                   'class' => 'Paws::DataExchange::AssetSourceEntry',
                                   'type' => 'ArrayRef[DataExchange_AssetSourceEntry]'
                                 },
               'DataSetId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'RevisionId' => 1,
                    'AssetSources' => 1,
                    'DataSetId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ImportAssetsFromS3ResponseDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ImportAssetsFromS3ResponseDetails object:

  $service_obj->Method(Att1 => { AssetSources => $value, ..., RevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ImportAssetsFromS3ResponseDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetSources

=head1 DESCRIPTION

Details from an import from Amazon S3 response.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetSources => ArrayRef[DataExchange_AssetSourceEntry]

  Is a list of Amazon S3 bucket and object key pairs.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this import job.


=head2 B<REQUIRED> RevisionId => Str

  The unique identifier for the revision associated with this import
response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

