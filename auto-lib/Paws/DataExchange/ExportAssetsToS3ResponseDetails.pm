# Generated from default/object.tt
package Paws::DataExchange::ExportAssetsToS3ResponseDetails;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::DataExchange::Types qw/DataExchange_AssetDestinationEntry/;
  has AssetDestinations => (is => 'ro', isa => ArrayRef[DataExchange_AssetDestinationEntry], required => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'DataSetId' => {
                                'type' => 'Str'
                              },
               'AssetDestinations' => {
                                        'type' => 'ArrayRef[DataExchange_AssetDestinationEntry]',
                                        'class' => 'Paws::DataExchange::AssetDestinationEntry'
                                      }
             },
  'IsRequired' => {
                    'DataSetId' => 1,
                    'RevisionId' => 1,
                    'AssetDestinations' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ExportAssetsToS3ResponseDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::ExportAssetsToS3ResponseDetails object:

  $service_obj->Method(Att1 => { AssetDestinations => $value, ..., RevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::ExportAssetsToS3ResponseDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetDestinations

=head1 DESCRIPTION

Details about the export to Amazon S3 response.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetDestinations => ArrayRef[DataExchange_AssetDestinationEntry]

  The destination in Amazon S3 where the asset is exported.


=head2 B<REQUIRED> DataSetId => Str

  The unique identifier for the data set associated with this export job.


=head2 B<REQUIRED> RevisionId => Str

  The unique identifier for the revision associated with this export
response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

