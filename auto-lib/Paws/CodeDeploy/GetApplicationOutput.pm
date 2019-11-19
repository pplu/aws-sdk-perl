# Generated from json/callresult_class.tt

package Paws::CodeDeploy::GetApplicationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_ApplicationInfo/;
  has Application => (is => 'ro', isa => CodeDeploy_ApplicationInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Application' => {
                                  'class' => 'Paws::CodeDeploy::ApplicationInfo',
                                  'type' => 'CodeDeploy_ApplicationInfo'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Application' => 'application'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetApplicationOutput

=head1 ATTRIBUTES


=head2 Application => CodeDeploy_ApplicationInfo

Information about the application.


=head2 _request_id => Str


=cut

1;