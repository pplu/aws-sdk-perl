# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListUserImportJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserImportJobType/;
  has PaginationToken => (is => 'ro', isa => Str);
  has UserImportJobs => (is => 'ro', isa => ArrayRef[CognitoIdp_UserImportJobType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PaginationToken' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserImportJobs' => {
                                     'class' => 'Paws::CognitoIdp::UserImportJobType',
                                     'type' => 'ArrayRef[CognitoIdp_UserImportJobType]'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserImportJobsResponse

=head1 ATTRIBUTES


=head2 PaginationToken => Str

An identifier that can be used to return the next set of user import
jobs in the list.


=head2 UserImportJobs => ArrayRef[CognitoIdp_UserImportJobType]

The user import jobs.


=head2 _request_id => Str


=cut

1;