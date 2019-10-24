# Generated from default/object.tt
package Paws::Discovery::ImportTask;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Discovery::Types qw//;
  has ApplicationImportFailure => (is => 'ro', isa => Int);
  has ApplicationImportSuccess => (is => 'ro', isa => Int);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has ErrorsAndFailedEntriesZip => (is => 'ro', isa => Str);
  has ImportCompletionTime => (is => 'ro', isa => Str);
  has ImportDeletedTime => (is => 'ro', isa => Str);
  has ImportRequestTime => (is => 'ro', isa => Str);
  has ImportTaskId => (is => 'ro', isa => Str);
  has ImportUrl => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ServerImportFailure => (is => 'ro', isa => Int);
  has ServerImportSuccess => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServerImportSuccess' => {
                                          'type' => 'Int'
                                        },
               'ImportUrl' => {
                                'type' => 'Str'
                              },
               'ImportTaskId' => {
                                   'type' => 'Str'
                                 },
               'ImportDeletedTime' => {
                                        'type' => 'Str'
                                      },
               'Status' => {
                             'type' => 'Str'
                           },
               'ErrorsAndFailedEntriesZip' => {
                                                'type' => 'Str'
                                              },
               'ServerImportFailure' => {
                                          'type' => 'Int'
                                        },
               'ApplicationImportFailure' => {
                                               'type' => 'Int'
                                             },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'ImportRequestTime' => {
                                        'type' => 'Str'
                                      },
               'ApplicationImportSuccess' => {
                                               'type' => 'Int'
                                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'ImportCompletionTime' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'ServerImportSuccess' => 'serverImportSuccess',
                       'ImportUrl' => 'importUrl',
                       'ImportTaskId' => 'importTaskId',
                       'ImportDeletedTime' => 'importDeletedTime',
                       'Status' => 'status',
                       'ErrorsAndFailedEntriesZip' => 'errorsAndFailedEntriesZip',
                       'ServerImportFailure' => 'serverImportFailure',
                       'ApplicationImportFailure' => 'applicationImportFailure',
                       'ClientRequestToken' => 'clientRequestToken',
                       'ImportRequestTime' => 'importRequestTime',
                       'ApplicationImportSuccess' => 'applicationImportSuccess',
                       'Name' => 'name',
                       'ImportCompletionTime' => 'importCompletionTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ImportTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::ImportTask object:

  $service_obj->Method(Att1 => { ApplicationImportFailure => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::ImportTask object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationImportFailure

=head1 DESCRIPTION

An array of information related to the import task request that
includes status information, times, IDs, the Amazon S3 Object URL for
the import file, and more.

=head1 ATTRIBUTES


=head2 ApplicationImportFailure => Int

  The total number of application records in the import file that failed
to be imported.


=head2 ApplicationImportSuccess => Int

  The total number of application records in the import file that were
successfully imported.


=head2 ClientRequestToken => Str

  A unique token used to prevent the same import request from occurring
more than once. If you didn't provide a token, a token was
automatically generated when the import task request was sent.


=head2 ErrorsAndFailedEntriesZip => Str

  A link to a compressed archive folder (in the ZIP format) that contains
an error log and a file of failed records. You can use these two files
to quickly identify records that failed, why they failed, and correct
those records. Afterward, you can upload the corrected file to your
Amazon S3 bucket and create another import task request.

This field also includes authorization information so you can confirm
the authenticity of the compressed archive before you download it.

If some records failed to be imported we recommend that you correct the
records in the failed entries file and then imports that failed entries
file. This prevents you from having to correct and update the larger
original file and attempt importing it again.


=head2 ImportCompletionTime => Str

  The time that the import task request finished, presented in the Unix
time stamp format.


=head2 ImportDeletedTime => Str

  The time that the import task request was deleted, presented in the
Unix time stamp format.


=head2 ImportRequestTime => Str

  The time that the import task request was made, presented in the Unix
time stamp format.


=head2 ImportTaskId => Str

  The unique ID for a specific import task. These IDs aren't globally
unique, but they are unique within an AWS account.


=head2 ImportUrl => Str

  The URL for your import file that you've uploaded to Amazon S3.


=head2 Name => Str

  A descriptive name for an import task. You can use this name to filter
future requests related to this import task, such as identifying
applications and servers that were included in this import task. We
recommend that you use a meaningful name for each import task.


=head2 ServerImportFailure => Int

  The total number of server records in the import file that failed to be
imported.


=head2 ServerImportSuccess => Int

  The total number of server records in the import file that were
successfully imported.


=head2 Status => Str

  The status of the import task. An import can have the status of
C<IMPORT_COMPLETE> and still have some records fail to import from the
overall request. More information can be found in the downloadable
archive defined in the C<errorsAndFailedEntriesZip> field, or in the
Migration Hub management console.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

