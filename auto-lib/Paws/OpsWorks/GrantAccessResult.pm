# Generated from json/callresult_class.tt

package Paws::OpsWorks::GrantAccessResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw/OpsWorks_TemporaryCredential/;
  has TemporaryCredential => (is => 'ro', isa => OpsWorks_TemporaryCredential);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TemporaryCredential' => {
                                          'type' => 'OpsWorks_TemporaryCredential',
                                          'class' => 'Paws::OpsWorks::TemporaryCredential'
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

Paws::OpsWorks::GrantAccessResult

=head1 ATTRIBUTES


=head2 TemporaryCredential => OpsWorks_TemporaryCredential

A C<TemporaryCredential> object that contains the data needed to log in
to the instance by RDP clients, such as the Microsoft Remote Desktop
Connection.


=head2 _request_id => Str


=cut

1;