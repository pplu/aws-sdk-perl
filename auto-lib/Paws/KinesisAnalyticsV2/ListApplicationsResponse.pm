# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::ListApplicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_ApplicationSummary/;
  has ApplicationSummaries => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_ApplicationSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationSummaries' => {
                                           'class' => 'Paws::KinesisAnalyticsV2::ApplicationSummary',
                                           'type' => 'ArrayRef[KinesisAnalyticsV2_ApplicationSummary]'
                                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ApplicationSummaries' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSummaries => ArrayRef[KinesisAnalyticsV2_ApplicationSummary]

A list of C<ApplicationSummary> objects.


=head2 NextToken => Str

The pagination token for the next set of results, or C<null> if there
are no additional results. Pass this token into a subsequent command to
retrieve the next set of items For more information about pagination,
see Using the AWS Command Line Interface's Pagination Options
(https://docs.aws.amazon.com/cli/latest/userguide/pagination.html).


=head2 _request_id => Str


=cut

1;