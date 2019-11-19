# Generated from json/callresult_class.tt

package Paws::CodeBuild::UpdateWebhookOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw/CodeBuild_Webhook/;
  has Webhook => (is => 'ro', isa => CodeBuild_Webhook);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Webhook' => {
                              'type' => 'CodeBuild_Webhook',
                              'class' => 'Paws::CodeBuild::Webhook'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Webhook' => 'webhook'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateWebhookOutput

=head1 ATTRIBUTES


=head2 Webhook => CodeBuild_Webhook

Information about a repository's webhook that is associated with a
project in AWS CodeBuild.


=head2 _request_id => Str


=cut

1;