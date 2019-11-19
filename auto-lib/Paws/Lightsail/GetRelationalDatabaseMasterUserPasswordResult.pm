# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has CreatedAt => (is => 'ro', isa => Str);
  has MasterUserPassword => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MasterUserPassword' => 'masterUserPassword',
                       'CreatedAt' => 'createdAt'
                     },
  'types' => {
               'MasterUserPassword' => {
                                         'type' => 'Str'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreatedAt' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp when the specified version of the master user password
was created.


=head2 MasterUserPassword => Str

The master user password for the C<password version> specified.


=head2 _request_id => Str


=cut

1;