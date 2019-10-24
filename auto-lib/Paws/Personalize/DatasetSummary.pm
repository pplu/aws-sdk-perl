# Generated from default/object.tt
package Paws::Personalize::DatasetSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has DatasetArn => (is => 'ro', isa => Str);
  has DatasetType => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatasetArn' => {
                                 'type' => 'Str'
                               },
               'Status' => {
                             'type' => 'Str'
                           },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'DatasetType' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'DatasetArn' => 'datasetArn',
                       'Status' => 'status',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CreationDateTime' => 'creationDateTime',
                       'DatasetType' => 'datasetType',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DatasetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DatasetSummary object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DatasetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Provides a summary of the properties of a dataset. For a complete
listing, call the DescribeDataset API.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The date and time (in Unix time) that the dataset was created.


=head2 DatasetArn => Str

  The Amazon Resource Name (ARN) of the dataset.


=head2 DatasetType => Str

  The dataset type. One of the following values:

=over

=item *

Interactions

=item *

Items

=item *

Users

=item *

Event-Interactions

=back



=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the dataset was last updated.


=head2 Name => Str

  The name of the dataset.


=head2 Status => Str

  The status of the dataset.

A dataset can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=item *

DELETE PENDING E<gt> DELETE IN_PROGRESS

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

