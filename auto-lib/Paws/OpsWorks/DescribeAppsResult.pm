# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeAppsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_App/;
  has Apps => (is => 'ro', isa => ArrayRef[OpsWorks_App]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Apps' => {
                           'class' => 'Paws::OpsWorks::App',
                           'type' => 'ArrayRef[OpsWorks_App]'
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

Paws::OpsWorks::DescribeAppsResult

=head1 ATTRIBUTES


=head2 Apps => ArrayRef[OpsWorks_App]

An array of C<App> objects that describe the specified apps.


=head2 _request_id => Str


=cut

1;