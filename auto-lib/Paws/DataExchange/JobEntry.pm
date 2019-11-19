# Generated from default/object.tt
package Paws::DataExchange::JobEntry;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataExchange::Types qw/DataExchange_ResponseDetails DataExchange_JobError/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has CreatedAt => (is => 'ro', isa => Str, required => 1);
  has Details => (is => 'ro', isa => DataExchange_ResponseDetails, required => 1);
  has Errors => (is => 'ro', isa => ArrayRef[DataExchange_JobError]);
  has Id => (is => 'ro', isa => Str, required => 1);
  has State => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);
  has UpdatedAt => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'Details' => {
                              'class' => 'Paws::DataExchange::ResponseDetails',
                              'type' => 'DataExchange_ResponseDetails'
                            },
               'Errors' => {
                             'class' => 'Paws::DataExchange::JobError',
                             'type' => 'ArrayRef[DataExchange_JobError]'
                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'State' => {
                            'type' => 'Str'
                          },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'IsRequired' => {
                    'Type' => 1,
                    'CreatedAt' => 1,
                    'UpdatedAt' => 1,
                    'State' => 1,
                    'Id' => 1,
                    'Arn' => 1,
                    'Details' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::JobEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::JobEntry object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::JobEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

AWS Data Exchange Jobs are asynchronous import or export operations
used to create or copy assets. A data set owner can both import and
export as they see fit. Someone with an entitlement to a data set can
only export. Jobs are deleted 90 days after they are created.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN for the job.


=head2 B<REQUIRED> CreatedAt => Str

  The date and time that the job was created, in ISO 8601 format.


=head2 B<REQUIRED> Details => DataExchange_ResponseDetails

  Details of the operation to be performed by the job, such as export
destination details or import source details.


=head2 Errors => ArrayRef[DataExchange_JobError]

  Errors for jobs.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the job.


=head2 B<REQUIRED> State => Str

  The state of the job.


=head2 B<REQUIRED> Type => Str

  The job type.


=head2 B<REQUIRED> UpdatedAt => Str

  The date and time that the job was last updated, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

