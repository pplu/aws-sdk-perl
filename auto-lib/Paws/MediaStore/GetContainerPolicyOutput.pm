# Generated from json/callresult_class.tt

package Paws::MediaStore::GetContainerPolicyOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaStore::Types qw//;
  has Policy => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Policy' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::GetContainerPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The contents of the access policy.


=head2 _request_id => Str


=cut

1;