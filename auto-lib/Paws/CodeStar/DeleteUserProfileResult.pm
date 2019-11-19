# Generated from json/callresult_class.tt

package Paws::CodeStar::DeleteUserProfileResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw//;
  has UserArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'UserArn' => 1
                  },
  'NameInRequest' => {
                       'UserArn' => 'userArn'
                     },
  'types' => {
               'UserArn' => {
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

Paws::CodeStar::DeleteUserProfileResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.


=head2 _request_id => Str


=cut

1;