# Generated from json/callresult_class.tt

package Paws::MediaStore::GetLifecyclePolicyOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaStore::Types qw//;
  has LifecyclePolicy => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LifecyclePolicy' => {
                                      'type' => 'Str'
                                    }
             },
  'IsRequired' => {
                    'LifecyclePolicy' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::GetLifecyclePolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> LifecyclePolicy => Str

The object lifecycle policy that is assigned to the container.


=head2 _request_id => Str


=cut

1;