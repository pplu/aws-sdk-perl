
package Paws::Amplify::UpdateBranchResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_Branch/;
  has Branch => (is => 'ro', isa => Amplify_Branch, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Branch' => {
                             'class' => 'Paws::Amplify::Branch',
                             'type' => 'Amplify_Branch'
                           }
             },
  'NameInRequest' => {
                       'Branch' => 'branch'
                     },
  'IsRequired' => {
                    'Branch' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::UpdateBranchResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Branch => Amplify_Branch

Branch structure for an Amplify App.


=head2 _request_id => Str


=cut

