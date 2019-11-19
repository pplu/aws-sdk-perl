# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeDeploymentsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_Deployment/;
  has Deployments => (is => 'ro', isa => ArrayRef[OpsWorks_Deployment]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Deployments' => {
                                  'type' => 'ArrayRef[OpsWorks_Deployment]',
                                  'class' => 'Paws::OpsWorks::Deployment'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeDeploymentsResult

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[OpsWorks_Deployment]

An array of C<Deployment> objects that describe the deployments.


=head2 _request_id => Str


=cut

1;