# Generated from callresult_class.tt

package Paws::IAM::CreateGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_Group/;
  has Group => (is => 'ro', isa => IAM_Group, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Group' => {
                            'class' => 'Paws::IAM::Group',
                            'type' => 'IAM_Group'
                          }
             },
  'IsRequired' => {
                    'Group' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Group => IAM_Group

A structure containing details about the new group.


=head2 _request_id => Str


=cut

