# Generated from default/object.tt
package Paws::Forecast::DatasetSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has CreationTime => (is => 'ro', isa => Str);
  has DatasetArn => (is => 'ro', isa => Str);
  has DatasetName => (is => 'ro', isa => Str);
  has DatasetType => (is => 'ro', isa => Str);
  has Domain => (is => 'ro', isa => Str);
  has LastModificationTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatasetName' => {
                                  'type' => 'Str'
                                },
               'LastModificationTime' => {
                                           'type' => 'Str'
                                         },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'DatasetType' => {
                                  'type' => 'Str'
                                },
               'DatasetArn' => {
                                 'type' => 'Str'
                               },
               'Domain' => {
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

Paws::Forecast::DatasetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::DatasetSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., LastModificationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::DatasetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of the dataset properties used in the ListDatasets
operation. To get the complete set of properties, call the
DescribeDataset operation, and provide the listed C<DatasetArn>.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When the dataset was created.


=head2 DatasetArn => Str

  The Amazon Resource Name (ARN) of the dataset.


=head2 DatasetName => Str

  The name of the dataset.


=head2 DatasetType => Str

  The dataset type.


=head2 Domain => Str

  The domain associated with the dataset.


=head2 LastModificationTime => Str

  When the dataset is created, C<LastModificationTime> is the same as
C<CreationTime>. After a CreateDatasetImportJob operation is called,
C<LastModificationTime> is when the import job finished or failed.
While data is being imported to the dataset, C<LastModificationTime> is
the current query time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

