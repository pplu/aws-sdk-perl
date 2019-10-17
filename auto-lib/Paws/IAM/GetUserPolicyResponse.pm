
package Paws::IAM::GetUserPolicyResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has PolicyDocument => (is => 'ro', isa => Str, required => 1);
  has Policy_decode_as => ( is => 'ro', isa => Str, default => sub { return 'URLJSON' });
  has Policy => ( is => 'lazy', builder => sub { my $self = shift; if($self->Policy_decode_as eq 'JSON') { return decode_json($self->PolicyDocument); } else { return decode_json(URL::Encode::url_decode($self->PolicyDocument)) } });
  has PolicyName => (is => 'ro', isa => Str, required => 1);
  has UserName => (is => 'ro', isa => Str, required => 1);

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
               'PolicyDocument' => {
                                     'type' => 'Str'
                                   },
               'PolicyName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'UserName' => 1,
                    'PolicyDocument' => 1,
                    'PolicyName' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetUserPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyDocument => Str

The policy document.

IAM stores policies in JSON format. However, resources that were
created using AWS CloudFormation templates can be formatted in YAML.
AWS CloudFormation always converts a YAML policy to JSON format before
submitting it to IAM.


=head2 B<REQUIRED> PolicyName => Str

The name of the policy.


=head2 B<REQUIRED> UserName => Str

The user the policy is associated with.


=head2 _request_id => Str


=cut

