# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListLaunchPathsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_LaunchPathSummary/;
  has LaunchPathSummaries => (is => 'ro', isa => ArrayRef[ServiceCatalog_LaunchPathSummary]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LaunchPathSummaries' => {
                                          'class' => 'Paws::ServiceCatalog::LaunchPathSummary',
                                          'type' => 'ArrayRef[ServiceCatalog_LaunchPathSummary]'
                                        },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListLaunchPathsOutput

=head1 ATTRIBUTES


=head2 LaunchPathSummaries => ArrayRef[ServiceCatalog_LaunchPathSummary]

Information about the launch path.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;