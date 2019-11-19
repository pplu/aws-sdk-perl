# Generated from json/callresult_class.tt

package Paws::Glue::GetResourcePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has CreateTime => (is => 'ro', isa => Str);
  has PolicyHash => (is => 'ro', isa => Str);
  has PolicyInJson => (is => 'ro', isa => Str);
  has UpdateTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyInJson' => {
                                   'type' => 'Str'
                                 },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'UpdateTime' => {
                                 'type' => 'Str'
                               },
               'PolicyHash' => {
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

Paws::Glue::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 CreateTime => Str

The date and time at which the policy was created.


=head2 PolicyHash => Str

Contains the hash value associated with this policy.


=head2 PolicyInJson => Str

Contains the requested policy document, in JSON format.


=head2 UpdateTime => Str

The date and time at which the policy was last updated.


=head2 _request_id => Str


=cut

1;