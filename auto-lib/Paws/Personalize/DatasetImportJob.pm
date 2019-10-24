# Generated from default/object.tt
package Paws::Personalize::DatasetImportJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_DataSource/;
  has CreationDateTime => (is => 'ro', isa => Str);
  has DatasetArn => (is => 'ro', isa => Str);
  has DatasetImportJobArn => (is => 'ro', isa => Str);
  has DataSource => (is => 'ro', isa => Personalize_DataSource);
  has FailureReason => (is => 'ro', isa => Str);
  has JobName => (is => 'ro', isa => Str);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
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
               'DatasetImportJobArn' => {
                                          'type' => 'Str'
                                        },
               'JobName' => {
                              'type' => 'Str'
                            },
               'DataSource' => {
                                 'class' => 'Paws::Personalize::DataSource',
                                 'type' => 'Personalize_DataSource'
                               },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'FailureReason' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'DatasetArn' => 'datasetArn',
                       'Status' => 'status',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CreationDateTime' => 'creationDateTime',
                       'DatasetImportJobArn' => 'datasetImportJobArn',
                       'JobName' => 'jobName',
                       'DataSource' => 'dataSource',
                       'RoleArn' => 'roleArn',
                       'FailureReason' => 'failureReason'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DatasetImportJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DatasetImportJob object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DatasetImportJob object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Describes a job that imports training data from a data source (Amazon
S3 bucket) to an Amazon Personalize dataset. For more information, see
CreateDatasetImportJob.

A dataset import job can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back


=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation date and time (in Unix time) of the dataset import job.


=head2 DatasetArn => Str

  The Amazon Resource Name (ARN) of the dataset that receives the
imported data.


=head2 DatasetImportJobArn => Str

  The ARN of the dataset import job.


=head2 DataSource => Personalize_DataSource

  The Amazon S3 bucket that contains the training data to import.


=head2 FailureReason => Str

  If a dataset import job fails, provides the reason why.


=head2 JobName => Str

  The name of the import job.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) the dataset was last updated.


=head2 RoleArn => Str

  The ARN of the AWS Identity and Access Management (IAM) role that has
permissions to read from the Amazon S3 data source.


=head2 Status => Str

  The status of the dataset import job.

A dataset import job can be in one of the following states:

=over

=item *

CREATE PENDING E<gt> CREATE IN_PROGRESS E<gt> ACTIVE -or- CREATE FAILED

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

