
package Paws::EC2::DescribeLaunchTemplatesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_LaunchTemplate/;
  has LaunchTemplates => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplate]);
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
               'LaunchTemplates' => {
                                      'class' => 'Paws::EC2::LaunchTemplate',
                                      'type' => 'ArrayRef[EC2_LaunchTemplate]'
                                    }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'LaunchTemplates' => 'launchTemplates'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLaunchTemplatesResult

=head1 ATTRIBUTES


=head2 LaunchTemplates => ArrayRef[EC2_LaunchTemplate]

Information about the launch templates.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

