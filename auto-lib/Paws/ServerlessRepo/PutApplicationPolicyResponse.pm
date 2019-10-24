
package Paws::ServerlessRepo::PutApplicationPolicyResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_ApplicationPolicyStatement/;
  has Statements => (is => 'ro', isa => ArrayRef[ServerlessRepo_ApplicationPolicyStatement]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statements' => {
                                 'class' => 'Paws::ServerlessRepo::ApplicationPolicyStatement',
                                 'type' => 'ArrayRef[ServerlessRepo_ApplicationPolicyStatement]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Statements' => 'statements'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::PutApplicationPolicyResponse

=head1 ATTRIBUTES


=head2 Statements => ArrayRef[ServerlessRepo_ApplicationPolicyStatement]

An array of policy statements applied to the application.


=head2 _request_id => Str


=cut

