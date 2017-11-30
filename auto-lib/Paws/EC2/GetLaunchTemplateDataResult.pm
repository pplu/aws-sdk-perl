
package Paws::EC2::GetLaunchTemplateDataResult;
  use Moose;
  has LaunchTemplateData => (is => 'ro', isa => 'Paws::EC2::ResponseLaunchTemplateData', request_name => 'launchTemplateData', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetLaunchTemplateDataResult

=head1 ATTRIBUTES


=head2 LaunchTemplateData => L<Paws::EC2::ResponseLaunchTemplateData>

The instance data.


=head2 _request_id => Str


=cut

