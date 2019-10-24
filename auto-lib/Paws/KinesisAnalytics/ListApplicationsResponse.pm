# Generated from json/callresult_class.tt

package Paws::KinesisAnalytics::ListApplicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_ApplicationSummary/;
  has ApplicationSummaries => (is => 'ro', isa => ArrayRef[KinesisAnalytics_ApplicationSummary], required => 1);
  has HasMoreApplications => (is => 'ro', isa => Bool, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationSummaries' => {
                                           'class' => 'Paws::KinesisAnalytics::ApplicationSummary',
                                           'type' => 'ArrayRef[KinesisAnalytics_ApplicationSummary]'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HasMoreApplications' => {
                                          'type' => 'Bool'
                                        }
             },
  'IsRequired' => {
                    'ApplicationSummaries' => 1,
                    'HasMoreApplications' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSummaries => ArrayRef[KinesisAnalytics_ApplicationSummary]

List of C<ApplicationSummary> objects.


=head2 B<REQUIRED> HasMoreApplications => Bool

Returns true if there are more applications to retrieve.


=head2 _request_id => Str


=cut

1;