# Generated from callresult_class.tt

package Paws::IAM::GetServiceLastAccessedDetailsWithEntitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::IAM::Types qw/IAM_ErrorDetails IAM_EntityDetails/;
  has EntityDetailsList => (is => 'ro', isa => ArrayRef[IAM_EntityDetails], required => 1);
  has Error => (is => 'ro', isa => IAM_ErrorDetails);
  has IsTruncated => (is => 'ro', isa => Bool);
  has JobCompletionDate => (is => 'ro', isa => Str, required => 1);
  has JobCreationDate => (is => 'ro', isa => Str, required => 1);
  has JobStatus => (is => 'ro', isa => Str, required => 1);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Error' => {
                            'class' => 'Paws::IAM::ErrorDetails',
                            'type' => 'IAM_ErrorDetails'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobCreationDate' => {
                                      'type' => 'Str'
                                    },
               'Marker' => {
                             'type' => 'Str'
                           },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'JobCompletionDate' => {
                                        'type' => 'Str'
                                      },
               'EntityDetailsList' => {
                                        'type' => 'ArrayRef[IAM_EntityDetails]',
                                        'class' => 'Paws::IAM::EntityDetails'
                                      },
               'IsTruncated' => {
                                  'type' => 'Bool'
                                }
             },
  'IsRequired' => {
                    'JobStatus' => 1,
                    'JobCompletionDate' => 1,
                    'JobCreationDate' => 1,
                    'EntityDetailsList' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetServiceLastAccessedDetailsWithEntitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityDetailsList => ArrayRef[IAM_EntityDetails]

An C<EntityDetailsList> object that contains details about when an IAM
entity (user or role) used group or policy permissions in an attempt to
access the specified AWS service.


=head2 Error => IAM_ErrorDetails

An object that contains details about the reason the operation failed.


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 B<REQUIRED> JobCompletionDate => Str

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the generated report job was
completed or failed.

This field is null if the job is still in progress, as indicated by a
job status value of C<IN_PROGRESS>.


=head2 B<REQUIRED> JobCreationDate => Str

The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the report job was created.


=head2 B<REQUIRED> JobStatus => Str

The status of the job.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 _request_id => Str


=cut

