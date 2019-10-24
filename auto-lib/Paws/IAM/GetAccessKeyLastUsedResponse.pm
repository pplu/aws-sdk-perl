# Generated from callresult_class.tt

package Paws::IAM::GetAccessKeyLastUsedResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_AccessKeyLastUsed/;
  has AccessKeyLastUsed => (is => 'ro', isa => IAM_AccessKeyLastUsed);
  has UserName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserName' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccessKeyLastUsed' => {
                                        'class' => 'Paws::IAM::AccessKeyLastUsed',
                                        'type' => 'IAM_AccessKeyLastUsed'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetAccessKeyLastUsedResponse

=head1 ATTRIBUTES


=head2 AccessKeyLastUsed => IAM_AccessKeyLastUsed

Contains information about the last time the access key was used.


=head2 UserName => Str

The name of the AWS IAM user that owns this access key.


=head2 _request_id => Str


=cut

