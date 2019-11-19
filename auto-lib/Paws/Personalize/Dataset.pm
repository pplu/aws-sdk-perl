# Generated from default/object.tt
package Paws::Personalize::Dataset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has DatasetArn => (is => 'ro', isa => Str);
  has DatasetGroupArn => (is => 'ro', isa => Str);
  has DatasetType => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has SchemaArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status',
                       'DatasetGroupArn' => 'datasetGroupArn',
                       'Name' => 'name',
                       'CreationDateTime' => 'creationDateTime',
                       'DatasetArn' => 'datasetArn',
                       'DatasetType' => 'datasetType',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'SchemaArn' => 'schemaArn'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'DatasetArn' => {
                                 'type' => 'Str'
                               },
               'DatasetType' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    },
               'SchemaArn' => {
                                'type' => 'Str'
                              },
               'LastUpdatedDateTime' => {
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

Paws::Personalize::Dataset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::Dataset object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::Dataset object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Provides metadata for a dataset.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation date and time (in Unix time) of the dataset.


=head2 DatasetArn => Str

  The Amazon Resource Name (ARN) of the dataset that you want metadata
for.


=head2 DatasetGroupArn => Str

  The Amazon Resource Name (ARN) of the dataset group.


=head2 DatasetType => Str

  One of the following values:

=over

=item *

Interactions

=item *

Items

=item *

Users

=back



=head2 LastUpdatedDateTime => Str

  A time stamp that shows when the dataset was updated.


=head2 Name => Str

  The name of the dataset.


=head2 SchemaArn => Str

  The ARN of the associated schema.


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

