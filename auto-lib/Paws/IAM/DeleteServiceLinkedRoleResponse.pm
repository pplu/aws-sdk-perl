# Generated from callresult_class.tt

package Paws::IAM::DeleteServiceLinkedRoleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has DeletionTaskId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeletionTaskId' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'DeletionTaskId' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteServiceLinkedRoleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeletionTaskId => Str

The deletion task identifier that you can use to check the status of
the deletion. This identifier is returned in the format
C<task/aws-service-role/E<lt>service-principal-nameE<gt>/E<lt>role-nameE<gt>/E<lt>task-uuidE<gt>>.


=head2 _request_id => Str


=cut

