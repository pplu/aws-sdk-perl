# Generated from json/callresult_class.tt

package Paws::Inspector::DescribeCrossAccountAccessRoleResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Inspector::Types qw//;
  has RegisteredAt => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has Valid => (is => 'ro', isa => Bool, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RegisteredAt' => {
                                   'type' => 'Str'
                                 },
               'Valid' => {
                            'type' => 'Bool'
                          }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'RegisteredAt' => 'registeredAt',
                       'Valid' => 'valid'
                     },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'RegisteredAt' => 1,
                    'Valid' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeCrossAccountAccessRoleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegisteredAt => Str

The date when the cross-account access role was registered.


=head2 B<REQUIRED> RoleArn => Str

The ARN that specifies the IAM role that Amazon Inspector uses to
access your AWS account.


=head2 B<REQUIRED> Valid => Bool

A Boolean value that specifies whether the IAM role has the necessary
policies attached to enable Amazon Inspector to access your AWS
account.


=head2 _request_id => Str


=cut

1;