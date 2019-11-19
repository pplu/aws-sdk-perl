# Generated from json/callresult_class.tt

package Paws::CodeDeploy::CreateApplicationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ApplicationId' => 'applicationId'
                     },
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
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

Paws::CodeDeploy::CreateApplicationOutput

=head1 ATTRIBUTES


=head2 ApplicationId => Str

A unique application ID.


=head2 _request_id => Str


=cut

1;