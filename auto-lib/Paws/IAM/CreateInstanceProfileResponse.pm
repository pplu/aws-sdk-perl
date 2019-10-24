# Generated from callresult_class.tt

package Paws::IAM::CreateInstanceProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_InstanceProfile/;
  has InstanceProfile => (is => 'ro', isa => IAM_InstanceProfile, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceProfile' => {
                                      'class' => 'Paws::IAM::InstanceProfile',
                                      'type' => 'IAM_InstanceProfile'
                                    }
             },
  'IsRequired' => {
                    'InstanceProfile' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateInstanceProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceProfile => IAM_InstanceProfile

A structure containing details about the new instance profile.


=head2 _request_id => Str


=cut

