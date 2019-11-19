
package Paws::Signer::ListSigningJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Signer::Types qw/Signer_SigningJob/;
  has Jobs => (is => 'ro', isa => ArrayRef[Signer_SigningJob]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Jobs' => {
                           'class' => 'Paws::Signer::SigningJob',
                           'type' => 'ArrayRef[Signer_SigningJob]'
                         }
             },
  'NameInRequest' => {
                       'Jobs' => 'jobs',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListSigningJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[Signer_SigningJob]

A list of your signing jobs.


=head2 NextToken => Str

String for specifying the next set of paginated results.


=head2 _request_id => Str


=cut

