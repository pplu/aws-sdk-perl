
package Paws::EC2::DescribeLaunchTemplateVersionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateVersion/;
  has LaunchTemplateVersions => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateVersion]);
  has NextToken => (is => 'ro', isa => Str);

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
               'LaunchTemplateVersions' => {
                                             'class' => 'Paws::EC2::LaunchTemplateVersion',
                                             'type' => 'ArrayRef[EC2_LaunchTemplateVersion]'
                                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'LaunchTemplateVersions' => 'launchTemplateVersionSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLaunchTemplateVersionsResult

=head1 ATTRIBUTES


=head2 LaunchTemplateVersions => ArrayRef[EC2_LaunchTemplateVersion]

Information about the launch template versions.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

