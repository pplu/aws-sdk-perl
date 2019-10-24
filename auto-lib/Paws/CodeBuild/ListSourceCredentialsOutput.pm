# Generated from json/callresult_class.tt

package Paws::CodeBuild::ListSourceCredentialsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_SourceCredentialsInfo/;
  has SourceCredentialsInfos => (is => 'ro', isa => ArrayRef[CodeBuild_SourceCredentialsInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceCredentialsInfos' => {
                                             'class' => 'Paws::CodeBuild::SourceCredentialsInfo',
                                             'type' => 'ArrayRef[CodeBuild_SourceCredentialsInfo]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SourceCredentialsInfos' => 'sourceCredentialsInfos'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListSourceCredentialsOutput

=head1 ATTRIBUTES


=head2 SourceCredentialsInfos => ArrayRef[CodeBuild_SourceCredentialsInfo]

A list of C<SourceCredentialsInfo> objects. Each
C<SourceCredentialsInfo> object includes the authentication type, token
ARN, and type of source provider for one set of credentials.


=head2 _request_id => Str


=cut

1;