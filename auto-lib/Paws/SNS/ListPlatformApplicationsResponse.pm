# Generated from callresult_class.tt

package Paws::SNS::ListPlatformApplicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SNS::Types qw/SNS_PlatformApplication/;
  has NextToken => (is => 'ro', isa => Str);
  has PlatformApplications => (is => 'ro', isa => ArrayRef[SNS_PlatformApplication]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PlatformApplications' => {
                                           'class' => 'Paws::SNS::PlatformApplication',
                                           'type' => 'ArrayRef[SNS_PlatformApplication]'
                                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListPlatformApplicationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

NextToken string is returned when calling ListPlatformApplications
action if additional records are available after the first page
results.


=head2 PlatformApplications => ArrayRef[SNS_PlatformApplication]

Platform applications returned when calling ListPlatformApplications
action.


=head2 _request_id => Str


=cut

